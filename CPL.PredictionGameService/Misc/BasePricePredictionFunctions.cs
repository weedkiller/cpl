﻿using CPL.Common.Enums;
using CPL.Common.Misc;
using Microsoft.Extensions.PlatformAbstractions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace CPL.PredictionGameService.Misc
{
    public class BasePricePredictionFunctions
    {
        public void DoGetBTCPrice(ref Resolver resolver, int pricePredictionId, string logFileName)
        {
            Utils.FileAppendThreadSafe(logFileName, string.Format("2. DoGetBTCPrice at: {0}{1}", DateTime.Now, Environment.NewLine));
            try
            {
                var pricePrediction = resolver.PricePredictionService.Queryable().FirstOrDefault(x => x.Id == pricePredictionId);

                // result time and price in utc
                var resultTime = pricePrediction.ResultTime.ToUTCUnixTimeInSeconds();
                var resultPrice = resolver.BTCPriceService.Queryable().OrderByDescending(x => x.Time).FirstOrDefault(x => resultTime >= x.Time).Price;

                // the time to be compared time and price in utc
                var toBeComparedTime = pricePrediction.ToBeComparedTime.ToUTCUnixTimeInSeconds();
                var toBeComparedPrice = resolver.BTCPriceService.Queryable().OrderByDescending(x => x.Time).FirstOrDefault(x => toBeComparedTime >= x.Time).Price;

                // update price prediction
                pricePrediction.ResultPrice = resultPrice;
                pricePrediction.ToBeComparedPrice = toBeComparedPrice;
                pricePrediction.UpdatedDate = DateTime.Now;

                resolver.PricePredictionService.Update(pricePrediction);

                // save to DB
                resolver.UnitOfWork.SaveChanges();
            }
            catch (Exception ex)
            {
                if (ex.InnerException?.Message != null)
                    Utils.FileAppendThreadSafe(logFileName, string.Format("  + DoGetBTCPrice -- Exception {0} at {1}{2}", ex.InnerException.Message, DateTime.Now, Environment.NewLine));
                else
                    Utils.FileAppendThreadSafe(logFileName, string.Format("  + DoGetBTCPrice -- Exception {0} at {1}{2}", ex.Message, DateTime.Now, Environment.NewLine));
            }
        }

        public void DoUpdateWinner(ref Resolver resolver, int pricePredictionId, string logFileName)
        {
            Utils.FileAppendThreadSafe(logFileName, string.Format("3. DoUpdateWinner--PricePredictionId = {0} at: {1}{2}", pricePredictionId, DateTime.Now, Environment.NewLine));
            try
            {
                var pricePrediction = resolver.PricePredictionService
                    .Queryable()
                    .FirstOrDefault(x => x.Id == pricePredictionId);

                var pricePredictionHistories = resolver.PricePredictionHistoryService
                    .Query()
                    .Include(x => x.SysUser)
                    .Where(x => x.PricePredictionId == pricePredictionId);

                // result of game
                bool? gameResult = null; // Assumption: ResultPrice = ToBeComparedPrice
                if (pricePrediction.ResultPrice > pricePrediction.ToBeComparedPrice)
                {
                    gameResult = EnumPricePredictionStatus.HIGH.ToBoolean();
                }
                else if (pricePrediction.ResultPrice < pricePrediction.ToBeComparedPrice)
                {
                    gameResult = EnumPricePredictionStatus.LOW.ToBoolean();
                }

                // calculate the prize
                decimal totalCPlAmountOfLosers = 0.0m;
                decimal totalCPLAmountToBeAwarded = 0.0m;
                decimal totalCPLAmountOfWinners = 0.0m;

                if (gameResult.HasValue)
                {
                    // calculate the prize
                    totalCPlAmountOfLosers = pricePredictionHistories.Where(x => x.Prediction != gameResult).Sum(x => x.Amount);
                    totalCPLAmountOfWinners = pricePredictionHistories.Where(x => x.Prediction == gameResult).Sum(x => x.Amount);
                    totalCPLAmountToBeAwarded = totalCPlAmountOfLosers * pricePrediction.DividendRate / 100; // Distribute 80% of the loser's BET quantity to the winners.
                }

                // calculate the award
                foreach (var pricePredictionHistory in pricePredictionHistories)
                {
                    // refund the money for users
                    if (!gameResult.HasValue)
                    {
                        pricePredictionHistory.SysUser.TokenAmount += pricePredictionHistory.Amount;
                        pricePredictionHistory.Result = EnumGameResult.REFUND.ToString();
                        pricePredictionHistory.Award = 0.0m;
                        pricePredictionHistory.TotalAward = 0.0m;

                        // update user's amount
                        resolver.SysUserService.Update(pricePredictionHistory.SysUser);
                    }
                    else
                    {
                        if (pricePredictionHistory.Prediction != gameResult)
                        {
                            // update result of PricePredictionHistory
                            pricePredictionHistory.Result = EnumGameResult.LOSE.ToString();
                            pricePredictionHistory.Award = 0.0m;
                            pricePredictionHistory.TotalAward = 0.0m;
                        }
                        else
                        {
                            // the amount will be awarded
                            var amountToBeAwarded = (pricePredictionHistory.Amount / totalCPLAmountOfWinners) * totalCPLAmountToBeAwarded; // The prize money is distributed at an equal rate according to the amount of bet.​
                            pricePredictionHistory.Result = EnumGameResult.WIN.ToString();
                            pricePredictionHistory.Award = amountToBeAwarded;
                            pricePredictionHistory.TotalAward = amountToBeAwarded + pricePredictionHistory.Amount;
                            pricePredictionHistory.SysUser.TokenAmount += amountToBeAwarded + pricePredictionHistory.Amount; // add amount award and refund amount bet

                            // update user's amount
                            resolver.SysUserService.Update(pricePredictionHistory.SysUser);
                        }
                    }

                    pricePredictionHistory.UpdatedDate = DateTime.Now;

                    // update price prediction history
                    resolver.PricePredictionHistoryService.Update(pricePredictionHistory);
                }

                // update pricePrediction
                pricePrediction.NumberOfPredictors = pricePredictionHistories.Count();
                pricePrediction.Volume = pricePredictionHistories.Sum(x => x.Amount);
                resolver.PricePredictionService.Update(pricePrediction);

                // save to DB
                resolver.UnitOfWork.SaveChanges();

                Utils.FileAppendThreadSafe(logFileName, string.Format("3.1. PricePredictionId = {0} ends at: {1}{2}", pricePredictionId, DateTime.Now, Environment.NewLine));
            }
            catch (Exception ex)
            {
                if (ex.InnerException?.Message != null)
                    Utils.FileAppendThreadSafe(logFileName, string.Format("  + DoUpdateWinnerPricePrediction -- Exception {0} at {1}{2}", ex.InnerException.Message, DateTime.Now, Environment.NewLine));
                else
                    Utils.FileAppendThreadSafe(logFileName, string.Format("  + DoUpdateWinnerPricePrediction -- Exception {0} at {1}{2}", ex.Message, DateTime.Now, Environment.NewLine));
            }
        }
    }
}
