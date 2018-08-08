﻿using AutoMapper;
using CPL.Common.Enums;
using CPL.Core.Interfaces;
using CPL.Domain;
using CPL.Infrastructure.Interfaces;
using CPL.Misc;
using CPL.Misc.Enums;
using CPL.Misc.Utils;
using CPL.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;
using ZXing;

namespace CPL.Controllers
{
    [Permission(EnumRole.User)]
    public class DepositAndWithdrawController : Controller
    {
        private readonly ILangService _langService;
        private readonly IMapper _mapper;
        private readonly IViewRenderService _viewRenderService;
        private readonly IUnitOfWorkAsync _unitOfWork;
        private readonly ISettingService _settingService;

        private readonly ITeamService _teamService;
        private readonly ITemplateService _templateService;
        private readonly ISysUserService _sysUserService;
        private readonly ICoinTransactionService _coinTransactionService;

        public DepositAndWithdrawController(
            ILangService langService,
            IMapper mapper,
            IViewRenderService viewRenderService,
            IUnitOfWorkAsync unitOfWork,
            ISettingService settingService,
            ITeamService teamService,
            ITemplateService templateService,
            ICoinTransactionService coinTransactionService,
            ISysUserService sysUserService)
        {
            this._langService = langService;
            this._mapper = mapper;
            this._viewRenderService = viewRenderService;
            this._settingService = settingService;
            this._unitOfWork = unitOfWork;
            this._teamService = teamService;
            this._templateService = templateService;
            this._coinTransactionService = coinTransactionService;
            this._sysUserService = sysUserService;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult LoadRequireProfile(ConfirmExchangeViewModel viewModel)
        {
            return PartialView("_RequireProfile", viewModel);
        }

        public IActionResult LoadRequireKYC(ConfirmExchangeViewModel viewModel)
        {
            return PartialView("_RequireKYC", viewModel);
        }

        [HttpPost]
        public IActionResult DoWithdraw(WithdrawViewModel viewModel)
        {
            if (viewModel.Amount <= 0)
                return new JsonResult(new { success = false, name = "amount", message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "InvalidWithdrawAmount") });

            var user = _sysUserService.Queryable().FirstOrDefault(x => x.Id == HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser").Id && x.IsDeleted == false);

            var txHashId = "";

            if (!CheckUserProfile(user))
                return new JsonResult(new
                {
                    success = false,
                    requireProfile = false
                });

            if (user.KYCVerified == null || !user.KYCVerified.Value)
                return new JsonResult(new
                {
                    success = false,
                    requireKyc = false
                });

            if (viewModel.Currency == EnumCurrency.BTC.ToString())
            {
                // Validate max BTC Amount
                if (viewModel.Amount > user.BTCAmount)
                    return new JsonResult(new { success = false, name = "amount", message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "InsufficientFunds") });

                //Validate BTC wallet address
                if (string.IsNullOrEmpty(viewModel.Address) || (!string.IsNullOrEmpty(viewModel.Address) && !ValidateAddressHelper.IsValidBTCAddress(viewModel.Address)))
                    return new JsonResult(new { success = false, name = "wallet", message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "InvalidBTCAddress") });

                // Transfer
                var txHashIdTask = ServiceClient.BAccountClient.TransferAsync(Authentication.Token, CPLConstant.BTCWithdrawPrivateKey, viewModel.Address, viewModel.Amount);
                txHashIdTask.Wait();
                txHashId = txHashIdTask.Result.TxId;

                // Save to DB
                _coinTransactionService.Insert(new CoinTransaction()
                {
                    SysUserId = user.Id,
                    FromWalletAddress = CPLConstant.BTCWithdrawAddress,
                    ToWalletAddress = viewModel.Address,
                    CoinAmount = viewModel.Amount,
                    CreatedDate = DateTime.Now,
                    CurrencyId = (int)EnumCurrency.BTC,
                    Status = EnumCoinstransactionStatus.PENDING.ToBoolean(),
                    TxHashId = txHashId,
                    Type = (int)EnumCoinTransactionType.WITHDRAW_BTC
                });

                user.BTCAmount -= viewModel.Amount;
                _sysUserService.Update(user);
                _unitOfWork.SaveChanges();

            }
            else if (viewModel.Currency == EnumCurrency.ETH.ToString())
            {
                // Validate max ETH Amount
                if (viewModel.Amount > user.ETHAmount)
                    return new JsonResult(new { success = false, name = "amount", message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "InsufficientFunds") });

                //Validate ETH wallet address
                if (string.IsNullOrEmpty(viewModel.Address) || (!string.IsNullOrEmpty(viewModel.Address) && !ValidateAddressHelper.IsValidETHAddress(viewModel.Address)))
                    return new JsonResult(new { success = false, name = "wallet", message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "InvalidETHAddress") });

                // Transfer
                var txHashIdTask = ServiceClient.EAccountClient.TransferByPrivateKeyAsync(Authentication.Token, CPLConstant.ETHWithdrawPrivateKey, viewModel.Address, viewModel.Amount, CPLConstant.DurationInSecond);
                txHashIdTask.Wait();
                txHashId = txHashIdTask.Result.TxId;

                // Save to DB
                _coinTransactionService.Insert(new CoinTransaction()
                {
                    SysUserId = user.Id,
                    FromWalletAddress = CPLConstant.ETHWithdrawAddress,
                    ToWalletAddress = viewModel.Address,
                    CoinAmount = viewModel.Amount,
                    CreatedDate = DateTime.Now,
                    CurrencyId = (int)EnumCurrency.ETH,
                    Status = EnumCoinstransactionStatus.PENDING.ToBoolean(),
                    TxHashId = txHashId,
                    Type = (int)EnumCoinTransactionType.WITHDRAW_ETH
                });

                user.ETHAmount -= viewModel.Amount;
                _sysUserService.Update(user);
                _unitOfWork.SaveChanges();
            }

            return new JsonResult(new { success = true, profileKyc = true, txhashid = txHashId, message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "WithdrawedSuccessfully") });
        }

        [HttpPost]
        public IActionResult DecodeQR(DecodeQrViewModel viewModel)
        {
            System.DrawingCore.Bitmap bitmap = new System.DrawingCore.Bitmap(viewModel.FormFile.OpenReadStream());
            try
            {
                BarcodeReader reader = new BarcodeReader { AutoRotate = true, TryInverted = true };
                string qrcode = reader.Decode(bitmap).Text;
                return new JsonResult(new { success = true, address = qrcode, message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "GeneratedQRCodeSuccessfully") });
            }
            catch (Exception ex)
            {
                return new JsonResult(new { success = false, message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "GeneratedQRCodeError") });
            }
        }

        public IActionResult LoadDepositWithdrawViewComponent()
        {
            return ViewComponent("DepositWithdraw");
        }

        private bool CheckUserProfile(SysUser user)
        {
            if (user.FirstName == null || user.LastName == null
                || user.Mobile == null || user.DOB == null
                || user.Country == null || user.City == null
                || user.StreetAddress == null
                || user.Mobile == null)
                return false;
            else return true;
        }
    }
}
