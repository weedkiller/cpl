USE [CPL]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAffiliateSale]    Script Date: 9/14/2018 4:06:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_GetAffiliateSale]
	-- Add the parameters for the stored procedure here
	@UserId int,
	@TotalSale money OUTPUT,
	@TodaySale money OUTPUT,
	@YesterdaySale money OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @TotalSale = TotalSale,
		@TodaySale = TodaySale,
		@YesterdaySale = YesterdaySale
	FROM (
	SELECT
		----------------
		-- Total sale --
		----------------
		(SELECT MAX(Value) FROM (VALUES (0), (   --|| Total used - Total award (all game)
			-----------------
			-- Lottery game--
			-----------------
			ISNULL((SELECT SUM(UnitPrice) as TotalCPLUsedInLottery
				FROM LotteryHistory join Lottery on LotteryHistory.LotteryId = Lottery.Id
				WHERE Lottery.Status = 3 -- COMPLETED
						and LotteryHistory.SysUserId = @UserId),0)
			-
			ISNULL((SELECT SUM(Value) as TotalCPLAwardedInLottery
				FROM LotteryHistory join LotteryPrize on LotteryHistory.LotteryPrizeId  = LotteryPrize.Id
									join Lottery on LotteryHistory.LotteryId = Lottery.Id
				WHERE Lottery.Status = 3 -- COMPLETED
						and LotteryHistory.SysUserId = @UserId),0)

				+
			--------------------------
			-- Price prediction game--
			--------------------------
			ISNULL((SELECT SUM(Amount) as TotalCPLUsedInPricePrediction
				FROM PricePredictionHistory join PricePrediction on PricePredictionHistory.PricePredictionId = PricePrediction.Id
				WHERE  PricePredictionHistory.SysUserId = @UserId),0)
			-
			ISNULL((SELECT SUM(Award) as TotalCPLAwardedInPricePrediction
				FROM PricePredictionHistory join PricePrediction on PricePredictionHistory.PricePredictionId = PricePrediction.Id
				WHERE PricePredictionHistory.SysUserId = @UserId),0)
						)) Total(Value))
		As TotalSale,
		----------------
		-- Today sale --
		----------------
		(SELECT MAX(Value) FROM (VALUES (0), (   --|| Total used - Total award (all game)
			-----------------
			-- Lottery game--
			-----------------
			ISNULL((SELECT SUM(UnitPrice) as TotalCPLUsedInLottery
				FROM LotteryHistory join Lottery on LotteryHistory.LotteryId = Lottery.Id
				WHERE Lottery.Status = 3 -- COMPLETED
						and Lottery.UpdatedDate = DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and LotteryHistory.SysUserId = @UserId),0)
			-
			ISNULL((SELECT SUM(Value) as TotalCPLAwardedInLottery
				FROM LotteryHistory join LotteryPrize on LotteryHistory.LotteryPrizeId  = LotteryPrize.Id
									join Lottery on LotteryHistory.LotteryId = Lottery.Id
				WHERE Lottery.Status = 3 -- COMPLETED
						and Lottery.UpdatedDate = DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and LotteryHistory.SysUserId = @UserId),0)

				+
			--------------------------
			-- Price prediction game--
			--------------------------
			ISNULL((SELECT SUM(Amount) as TotalCPLUsedInPricePrediction
				FROM PricePredictionHistory join PricePrediction on PricePredictionHistory.PricePredictionId = PricePrediction.Id
						and PricePrediction.ResultTime = DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and  PricePredictionHistory.SysUserId = @UserId),0)
			-
			ISNULL((SELECT SUM(Award) as TotalCPLAwardedInPricePrediction
				FROM PricePredictionHistory join PricePrediction on PricePredictionHistory.PricePredictionId = PricePrediction.Id
						and PricePrediction.ResultTime = DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and PricePredictionHistory.SysUserId = @UserId),0)
						)) Today(Value))
		As TodaySale,
		--------------------
		-- Yesterday sale --
		--------------------
		(SELECT MAX(Value) FROM (VALUES (0), (   --|| Total used - Total award (all game)
			-----------------
			-- Lottery game--
			-----------------
			ISNULL((SELECT SUM(UnitPrice) as TotalCPLUsedInLottery
				FROM LotteryHistory join Lottery on LotteryHistory.LotteryId = Lottery.Id
				WHERE Lottery.Status = 3 -- COMPLETED
						and	Lottery.UpdatedDate >= DATEADD(day,DATEDIFF(day,1,GETDATE()),0)
						and Lottery.UpdatedDate < DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and LotteryHistory.SysUserId = @UserId),0)
			-
			ISNULL((SELECT SUM(Value) as TotalCPLAwardedInLottery
				FROM LotteryHistory join LotteryPrize on LotteryHistory.LotteryPrizeId  = LotteryPrize.Id
									join Lottery on LotteryHistory.LotteryId = Lottery.Id
				WHERE Lottery.Status = 3 -- COMPLETED
						and	Lottery.UpdatedDate >= DATEADD(day,DATEDIFF(day,1,GETDATE()),0)
						and Lottery.UpdatedDate < DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and LotteryHistory.SysUserId = @UserId),0)

				+
			--------------------------
			-- Price prediction game--
			--------------------------
			ISNULL((SELECT SUM(Amount) as TotalCPLUsedInPricePrediction
				FROM PricePredictionHistory join PricePrediction on PricePredictionHistory.PricePredictionId = PricePrediction.Id
				WHERE PricePrediction.ResultTime >= DATEADD(day,DATEDIFF(day,1,GETDATE()),0)
						and PricePrediction.ResultTime < DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and  PricePredictionHistory.SysUserId = @UserId),0)
			-
			ISNULL((SELECT SUM(Award) as TotalCPLAwardedInPricePrediction
				FROM PricePredictionHistory join PricePrediction on PricePredictionHistory.PricePredictionId = PricePrediction.Id
				WHERE PricePrediction.ResultTime >= DATEADD(day,DATEDIFF(day,1,GETDATE()),0)
						and PricePrediction.ResultTime < DATEADD(day,DATEDIFF(day,0,GETDATE()),0)
						and PricePredictionHistory.SysUserId = @UserId),0)
						)) Yesterday(Value))
		As YesterdaySale
	FROM SysUser su
	WHERE Id = @UserId and AffiliateId is not null and AffiliateId > 0
	) AffiliateSale

	RETURN
END
