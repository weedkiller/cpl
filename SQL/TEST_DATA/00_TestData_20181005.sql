use CPL;
truncate table [Lottery];
truncate table [LotteryDetail];
truncate table [LotteryHistory];
truncate table [LotteryPrize];
truncate table [LotteryCategory]
truncate table [PricePrediction];
truncate table [PricePredictionHistory];
--truncate table [PricePredictionCategory];
--truncate table [PricePredictionCategoryDetail];
truncate table [PricePredictionSetting];
truncate table [PricePredictionSettingDetail];
truncate table [SysUser];
truncate table [Affiliate];
truncate table [Agency];
truncate table [BTCPrice]
 
 GO
 insert into BTCPrice values (7000, DATEDIFF(SECOND,{d '1970-01-01'}, getdate()));

GO
USE [CPL]
GO
SET IDENTITY_INSERT [dbo].[Affiliate] ON 
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (1, 1, 2, 3, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (2, 2, 2, 2, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (3, 3, 3, 3, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (4, 4, 4, 4, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (5, 5, 5, 5, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (6, 6, 6, 6, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (7, 7, 7, 7, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (8, 8, 8, 8, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (9, 9, 9, 9, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (10, 3, 2, 1, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (11, 2, 5, 1, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (12, 5, 7, 2, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (13, 4, 7, 5, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (14, 2, 5, 7, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (15, 8, 6, 11, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (16, 3, 5, 7, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (17, 7, 2, 4, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (18, 5, 5, 4, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (19, 2, 8, 9, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (20, 3, 7, 9, 0, 0, 0)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (21, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (22, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (23, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (24, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (25, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (26, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (27, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (28, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (29, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (30, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (31, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (32, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (33, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (34, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (35, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (36, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (37, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (38, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (39, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (40, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (41, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (42, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (43, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (44, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (45, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (46, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (47, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (48, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (49, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (50, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (51, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (52, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (53, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (54, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (55, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (56, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (57, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (58, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (59, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (60, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (61, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (62, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (63, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (64, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (65, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (66, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (67, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (68, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (69, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (70, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (71, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Affiliate] ([Id], [Tier1DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (72, 1, 1, 1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Affiliate] OFF
GO
SET IDENTITY_INSERT [dbo].[Agency] ON 
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (2, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (3, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (4, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (5, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (6, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (7, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (8, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (9, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (10, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (11, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (12, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (13, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (14, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (15, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (16, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (17, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (18, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (19, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (20, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (21, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (22, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (23, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (24, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (25, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (26, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (27, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (28, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (29, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (30, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (31, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (32, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (33, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (34, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (35, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (36, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (37, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (38, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (39, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (40, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (41, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (42, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (43, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (44, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (45, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (46, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (47, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (48, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (49, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (50, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (51, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (52, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (53, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (54, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (55, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (56, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (57, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (58, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (59, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (60, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (61, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (62, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (63, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (64, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (65, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (66, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (67, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (68, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (69, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (70, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (71, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (72, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (73, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (74, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (75, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (76, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (77, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (78, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (79, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (80, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (81, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (82, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (83, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (84, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (85, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (86, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (87, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (88, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (89, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (90, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Agency] ([Id], [Tier1DirectRate], [Tier2DirectRate], [Tier3DirectRate], [Tier2SaleToTier1Rate], [Tier3SaleToTier1Rate], [Tier3SaleToTier2Rate], [IsAutoPaymentEnable], [IsTier2TabVisible], [IsTier3TabVisible]) VALUES (91, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Agency] OFF
GO
SET IDENTITY_INSERT [dbo].[Lottery] ON 
GO
INSERT [dbo].[Lottery] ([Id], [Phase], [CreatedDate], [Volume], [Status], [Title], [UnitPrice], [UpdatedDate], [IsDeleted], [LotteryCategoryId]) VALUES (1, 1, CAST(N'2018-08-08T20:22:42.890' AS DateTime), 5000, 3, N'仮想通貨宝クジ', 500, CAST(N'2018-08-16T00:00:00.000' AS DateTime), 0, 1)
GO
INSERT [dbo].[Lottery] ([Id], [Phase], [CreatedDate], [Volume], [Status], [Title], [UnitPrice], [UpdatedDate], [IsDeleted], [LotteryCategoryId]) VALUES (2, 2, CAST(N'2018-08-08T20:26:40.453' AS DateTime), 5000, 3, N'仮想通貨宝クジ', 1000, CAST(N'2018-08-17T00:00:00.000' AS DateTime), 0, 1)
GO
INSERT [dbo].[Lottery] ([Id], [Phase], [CreatedDate], [Volume], [Status], [Title], [UnitPrice], [UpdatedDate], [IsDeleted], [LotteryCategoryId]) VALUES (3, 3, CAST(N'2018-08-08T20:31:25.240' AS DateTime), 5000, 2, N'仮想通貨宝クジ', 300, NULL, 0, 1)
GO
INSERT [dbo].[Lottery] ([Id], [Phase], [CreatedDate], [Volume], [Status], [Title], [UnitPrice], [UpdatedDate], [IsDeleted], [LotteryCategoryId]) VALUES (4, 4, CAST(N'2018-08-08T20:33:58.593' AS DateTime), 5000, 2, N'仮想通貨宝クジ', 300, NULL, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Lottery] OFF
GO
SET IDENTITY_INSERT [dbo].[LotteryCategory] ON 
GO
INSERT [dbo].[LotteryCategory] ([Id], [Name], [Description], [ViewId]) VALUES (1, N'Easy Win', NULL, N'181996355')
GO
SET IDENTITY_INSERT [dbo].[LotteryCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[LotteryDetail] ON 
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (1, 1, 1, N'1_ds_20180828082242_desktop slider.jpg', N'1_dl_20180828082242_thumb-game_08.jpg', N'1_ml_20180828082242_thumb-game_17.jpg', N'1_ms_20180828082242_mobile banner.jpg', N'1_p_20180828082242_prize.jpg', N'<p>When the number of purchased lottery tickets reach the upper limit, we will make a lottery by Smart Contract.​</p>
<p>Lottery will be held at 0:00 am in Japan time and will be announced on the user''s management screen at 10 AM in the next morning.​</p>
<p>If the number of purchases does not reach the upper limit, it will be carried over to the next day until the upper ​limit is reached.</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (2, 2, 1, N'2_ds_20180828082640_desktop slider.jpg', N'2_dl_20180828082640_thumb-game_08.jpg', N'2_ml_20180828082640_thumb-game_17.jpg', N'2_ms_20180828082640_mobile banner.jpg', N'2_p_20180828082640_prize.jpg', N'<p>When the number of purchased lottery tickets reach the upper limit, we will make a lottery by Smart Contract.​</p>
<p>Lottery will be held at 0:00 am in Japan time and will be announced on the user''s management screen at 10 AM in the next morning.​</p>
<p>If the number of purchases does not reach the upper limit, it will be carried over to the next day until the upper ​limit is reached.</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (3, 3, 1, N'3_ds_20180828083125_desktop slider.jpg', N'lottery_desktop_listing_03.png', N'lottery_mobile_listing_03.png', N'3_ms_20180828083125_mobile banner.jpg', N'3_p_20180828083125_prize.jpg', N'<p>When the number of purchased lottery tickets reach the upper limit, we will make a lottery by Smart Contract.​</p>
<p>Lottery will be held at 0:00 am in Japan time and will be announced on the user''s management screen at 10 AM in the next morning.​</p>
<p>If the number of purchases does not reach the upper limit, it will be carried over to the next day until the upper ​limit is reached.</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (4, 4, 1, N'4_ds_20180828083358_desktop slider.jpg', N'lottery_desktop_listing_04.png', N'lottery_mobile_listing_04.png', N'4_ms_20180828083358_mobile banner.jpg', N'4_p_20180828083358_prize.jpg', N'<p>When the number of purchased lottery tickets reach the upper limit, we will make a lottery by Smart Contract.​</p>
<p>Lottery will be held at 0:00 am in Japan time and will be announced on the user''s management screen at 10 AM in the next morning.​</p>
<p>If the number of purchases does not reach the upper limit, it will be carried over to the next day until the upper ​limit is reached.</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (5, 1, 2, N'1_ds_20180828082242_desktop slider.jpg', N'1_dl_20180828082242_thumb-game_08.jpg', N'1_ml_20180828082242_thumb-game_17.jpg', N'1_ms_20180828082242_mobile banner.jpg', N'1_p_20180828082242_prize.jpg', N'<p>仮想通貨くじの購入数が上限に達した段階で、スマートコントラクトによる抽選を行います。​</p>  <p>抽選時間は日本時間午前0時に行われ、翌朝10時にユーザー様の管理画面上で発表されます。​</p>  <p>（購入数が上限に達しない場合は、上限に達するまで翌日に持ち越されます。)</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (6, 2, 2, N'2_ds_20180828082640_desktop slider.jpg', N'2_dl_20180828082640_thumb-game_08.jpg', N'2_ml_20180828082640_thumb-game_17.jpg', N'2_ms_20180828082640_mobile banner.jpg', N'2_p_20180828082640_prize.jpg', N'<p>仮想通貨くじの購入数が上限に達した段階で、スマートコントラクトによる抽選を行います。​</p>  <p>抽選時間は日本時間午前0時に行われ、翌朝10時にユーザー様の管理画面上で発表されます。​</p>  <p>（購入数が上限に達しない場合は、上限に達するまで翌日に持ち越されます。)</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (7, 3, 2, N'3_ds_20180828083125_desktop slider.jpg', N'lottery_desktop_listing_03.png', N'lottery_mobile_listing_03.png', N'3_ms_20180828083125_mobile banner.jpg', N'3_p_20180828083125_prize.jpg', N'<p>仮想通貨くじの購入数が上限に達した段階で、スマートコントラクトによる抽選を行います。​</p>  <p>抽選時間は日本時間午前0時に行われ、翌朝10時にユーザー様の管理画面上で発表されます。​</p>  <p>（購入数が上限に達しない場合は、上限に達するまで翌日に持ち越されます。)</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
INSERT [dbo].[LotteryDetail] ([Id], [LotteryId], [LangId], [DesktopTopImage], [DesktopListingImage], [MobileListingImage], [MobileTopImage], [PrizeImage], [Description], [ShortDescription]) VALUES (8, 4, 2, N'4_ds_20180828083358_desktop slider.jpg', N'lottery_desktop_listing_04.png', N'lottery_mobile_listing_04.png', N'4_ms_20180828083358_mobile banner.jpg', N'4_p_20180828083358_prize.jpg', N'<p>仮想通貨くじの購入数が上限に達した段階で、スマートコントラクトによる抽選を行います。​</p>  <p>抽選時間は日本時間午前0時に行われ、翌朝10時にユーザー様の管理画面上で発表されます。​</p>  <p>（購入数が上限に達しない場合は、上限に達するまで翌日に持ち越されます。)</p>', N'<b>0.0001BTCから遊べて<br/>
最高当選100BTC！<br/>
億万長者のチャンス</b>')
GO
SET IDENTITY_INSERT [dbo].[LotteryDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[LotteryHistory] ON 
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (1, 1, 1, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'111111', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 1, 1, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (2, 1, 2, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'222222', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 2, 2, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (3, 1, 3, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'333333', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 3, 3, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (5, 2, 4, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'444444', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 7, 4, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (6, 1, 2, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'555555', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 5, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (7, 2, 4, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 6, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (8, 2, 5, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'777777', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 6, 7, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (9, 2, 6, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'888888', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 8, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (10, 2, 7, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'999999', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 9, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (11, 2, 8, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'100000', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 10, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (12, 2, 8, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'111111', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 4, 11, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (13, 2, 9, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 12, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (14, 1, 10, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 13, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (15, 2, 11, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 4, 14, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (16, 1, 12, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 4, 15, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (17, 1, 13, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 16, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (18, 2, 14, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 17, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (19, 2, 14, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 5, 18, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (20, 2, 14, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 19, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (21, 2, 15, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 20, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (22, 2, 16, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), NULL, 21, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (23, 2, 17, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 8, 22, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (24, 2, 17, N'WIN', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 8, 23, N'')
GO
INSERT [dbo].[LotteryHistory] ([Id], [LotteryId], [SysUserId], [Result], [CreatedDate], [TicketNumber], [UpdatedDate], [LotteryPrizeId], [TicketIndex], [TxHashId]) VALUES (25, 2, 17, N'LOSE', CAST(N'2018-08-12T01:00:00.000' AS DateTime), N'666666', CAST(N'2018-08-13T00:00:00.000' AS DateTime), 8, 24, N'')
GO
SET IDENTITY_INSERT [dbo].[LotteryHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[LotteryPrize] ON 
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (1, 1000000.0000, 1, 1, 1)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (2, 100000.0000, 1, 5, 2)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (3, 10000.0000, 1, 25, 3)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (4, 500.0000, 1, 500, 4)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (5, 2000000.0000, 2, 1, 1)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (6, 200000.0000, 2, 5, 2)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (7, 20000.0000, 2, 40, 3)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (8, 1000.0000, 2, 200, 4)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (9, 500000.0000, 3, 1, 1)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (10, 50000.0000, 3, 10, 2)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (11, 5000.0000, 3, 25, 3)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (12, 300.0000, 3, 500, 4)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (13, 1000000.0000, 4, 1, 1)
GO
INSERT [dbo].[LotteryPrize] ([Id], [Value], [LotteryId], [Volume], [Index]) VALUES (14, 300.0000, 4, 500, 2)
GO
SET IDENTITY_INSERT [dbo].[LotteryPrize] OFF
GO
SET IDENTITY_INSERT [dbo].[PricePrediction] ON 
GO
INSERT [dbo].[PricePrediction] ([Id], [ResultPrice], [NumberOfPredictors], [Volume], [Coinbase], [UpdatedDate], [OpenBettingTime], [CloseBettingTime], [ResultTime], [ToBeComparedTime], [ToBeComparedPrice], [PricePredictionCategoryId], [Status]) VALUES (1, NULL, NULL, NULL, N'BTCUSDT', NULL,  CONVERT(varchar, GETDATE(), 23) + ' 01:15:00', CONVERT(varchar, DATEADD(day, 1, getdate()) , 23) + ' 00:00:00', CONVERT(varchar, DATEADD(day, 1, getdate()) , 23) + ' 01:00:00', CONVERT(varchar, DATEADD(day, 1, getdate()) , 23) + ' 01:15:00', NULL, 1, 1)
GO
INSERT [dbo].[PricePrediction] ([Id], [ResultPrice], [NumberOfPredictors], [Volume], [Coinbase], [UpdatedDate], [OpenBettingTime], [CloseBettingTime], [ResultTime], [ToBeComparedTime], [ToBeComparedPrice], [PricePredictionCategoryId], [Status]) VALUES (2, NULL, NULL, NULL, N'BTCUSDT', NULL, CONVERT(varchar, GETDATE(), 23) + ' 09:15:00', CONVERT(varchar, DATEADD(day, 1, getdate()) , 23) + ' 08:00:00', CONVERT(varchar, DATEADD(day, 1, getdate()) , 23) + ' 09:00:00', CONVERT(varchar, DATEADD(day, 1, getdate()) , 23) + ' 09:15:00', NULL, 2, 1)
GO
INSERT [dbo].[PricePrediction] ([Id], [ResultPrice], [NumberOfPredictors], [Volume], [Coinbase], [UpdatedDate], [OpenBettingTime], [CloseBettingTime], [ResultTime], [ToBeComparedTime], [ToBeComparedPrice], [PricePredictionCategoryId], [Status]) VALUES (3, NULL, NULL, NULL, N'BTCUSDT', NULL, CONVERT(varchar, GETDATE(), 23) + ' 00:15:00', CONVERT(varchar, DATEADD(day, 0, getdate()) , 23) + ' 00:30:00', CONVERT(varchar, DATEADD(day, 0, getdate()) , 23) + ' 14:00:00', CONVERT(varchar, DATEADD(day, 0, getdate()) , 23) + ' 15:15:00', NULL, 2,1)
GO
SET IDENTITY_INSERT [dbo].[PricePrediction] OFF
GO
SET IDENTITY_INSERT [dbo].[PricePredictionHistory] ON 
GO
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (1, 1, 1, CAST(N'2018-10-02T00:00:00.000' AS DateTime), 100.0000, 1, N'WIN', 10.0000, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 110.0000)
GO
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (2, 1, 1, CAST(N'2018-09-02T00:00:00.000' AS DateTime), 100.0000, 1, N'WIN', 10.0000, CAST(N'2018-09-12T00:00:00.000' AS DateTime), 310.0000)
GO
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (3, 1, 1, CAST(N'2018-08-02T00:00:00.000' AS DateTime), 100.0000, 1, N'WIN', 10.0000, CAST(N'2018-08-12T00:00:00.000' AS DateTime), 210.0000)
GO
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (4, 2, 1, CAST(N'2018-09-02T00:00:00.000' AS DateTime), 10.0000, 1, N'WIN', 0.0000, CAST(N'2018-08-12T00:00:00.000' AS DateTime), 0.0000)
GO
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (5, 2, 1, CAST(N'2018-09-02T00:00:00.000' AS DateTime), 150.0000, 1, N'WIN', 0.0000, CAST(N'2018-09-12T00:00:00.000' AS DateTime), 0.0000)
GO
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (6, 2, 1, CAST(N'2018-10-02T00:00:00.000' AS DateTime), 300.0000, 1, N'WIN', 0.0000, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0.0000)
GO
SET IDENTITY_INSERT [dbo].[PricePredictionHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[SysUser] ON 
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (1, 1, N'info.cplcoin@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (2, 1, N'info.cplcoin2@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 39500.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (3, 1, N'info.cplcoin3@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 3, 1, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (4, 1, N'info.cplcoin4@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 179700.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 4, 2, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (5, 1, N'info.cplcoin5@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 103000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 5, 2, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (6, 1, N'info.cplcoin6@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 69000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 6, 5, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (7, 1, N'info.cplcoin7@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95900.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 7, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (8, 1, N'info.cplcoin8@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 8, 6, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (9, 1, N'info.cplcoin9@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 9, 7, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (10, 1, N'info.cplcoin10@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 10, 7, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (11, 1, N'info.cplcoin11@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 11, 2, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (12, 1, N'info.cplcoin12@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 12, 4, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (13, 1, N'info.cplcoin13@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 13, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (14, 1, N'info.cplcoin14@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 142900.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 14, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (15, 1, N'info.cplcoin15@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 145000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 15, 14, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (16, 1, N'info.cplcoin16@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 16, 15, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (17, 1, N'info.cplcoin17@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 57000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 17, 16, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (18, 1, N'info.cplcoin18@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 18, 17, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (19, 1, N'info.cplcoin19@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 19000.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 19, 18, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (20, 1, N'info.cplcoin20@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, NULL, 20, 19, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (21, 1, N'info.cplcoin21@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 57000.0000, NULL, NULL, NULL, NULL, NULL, 0, 21, 21, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (22, 1, N'info.cplcoin22@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95000.0000, NULL, NULL, NULL, NULL, NULL, 0, 22, 22, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (23, 1, N'info.cplcoin23@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 19000.0000, NULL, NULL, NULL, NULL, NULL, 0, 23, 23, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (24, 1, N'info.cplcoin24@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, 24, 24, 24, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (25, 1, N'info.cplcoin25@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 57000.0000, NULL, NULL, NULL, NULL, NULL, 0, 25, 25, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (26, 1, N'info.cplcoin26@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95000.0000, NULL, NULL, NULL, NULL, NULL, 0, 26, 26, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (27, 1, N'info.cplcoin27@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 19000.0000, NULL, NULL, NULL, NULL, NULL, 0, 27, 27, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (28, 1, N'info.cplcoin28@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, 28, 28, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (29, 1, N'info.cplcoin29@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 57000.0000, NULL, NULL, NULL, NULL, NULL, 0, 29, 29, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (30, 1, N'info.cplcoin30@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95000.0000, NULL, NULL, NULL, NULL, NULL, 0, 30, 30, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (31, 1, N'info.cplcoin31@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 19000.0000, NULL, NULL, NULL, NULL, NULL, 0, 31, 31, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (32, 1, N'info.cplcoin32@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, 32, 32, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (33, 1, N'info.cplcoin33@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 57000.0000, NULL, NULL, NULL, NULL, NULL, 0, 33, 33, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (34, 1, N'info.cplcoin34@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 95000.0000, NULL, NULL, NULL, NULL, NULL, 0, 34, 34, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (35, 1, N'info.cplcoin35@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 19000.0000, NULL, NULL, NULL, NULL, NULL, 0, 35, 35, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[SysUser] ([Id], [IsAdmin], [Email], [Password], [FirstName], [LastName], [Mobile], [ResetPasswordToken], [ResetPasswordDate], [ActivateToken], [CreatedDate], [KYCVerified], [FrontSide], [BackSide], [DOB], [BTCHDWalletAddressIndex], [KYCCreatedDate], [IsDeleted], [ETHHDWalletAddress], [ETHHDWalletAddressIndex], [BTCHDWalletAddress], [BTCAmount], [ETHAmount], [TokenAmount], [Gender], [PostalCode], [Country], [City], [StreetAddress], [TwoFactorAuthenticationEnable], [AgencyId], [AffiliateId], [IsIntroducedById], [AffiliateCreatedDate], [IsLocked]) VALUES (36, 1, N'info.cplcoin36@gmail.com', N'$2y$10$Sh.jL/v.yLPKj.2VqOrABOIwRvjCMKKpIWjFmRP9vyEwFgdvG9KhW', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-08-28T20:12:59.967' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, 0, N'0x37bd726d30e87040ce4e309a322914a1AFe0F2c4', 1, N'mrmdob16nnxGRfbC9jb683WiwaE1DTYEvA', CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), 0.0000, NULL, NULL, NULL, NULL, NULL, 0, 36, 36, NULL, CAST(N'2018-09-15T00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[SysUser] OFF

GO
SET IDENTITY_INSERT [dbo].[PricePredictionSetting] ON 
GO
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividendRate], [CreatedDate], [PricePredictionCategoryId], [Status], [UpdatedDate], [IsDeleted]) VALUES (1, CAST(N'01:15:00' AS Time), CAST(N'22:45:00' AS Time), 1, 15, 80, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 1, 0, NULL, 0)
GO
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividendRate], [CreatedDate], [PricePredictionCategoryId], [Status], [UpdatedDate], [IsDeleted]) VALUES (2, CAST(N'09:15:00' AS Time), CAST(N'08:00:00' AS Time), 1, 15, 80, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 1, 0, NULL, 0)
GO
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividendRate], [CreatedDate], [PricePredictionCategoryId], [Status], [UpdatedDate], [IsDeleted]) VALUES (3, CAST(N'17:15:00' AS Time), CAST(N'16:00:00' AS Time), 1, 15, 80, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 1, 0, NULL, 0)
GO
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividendRate], [CreatedDate], [PricePredictionCategoryId], [Status], [UpdatedDate], [IsDeleted]) VALUES (4, CAST(N'03:15:00' AS Time), CAST(N'11:15:00' AS Time), 3, 2, 4, CAST(N'2018-10-05T12:01:34.343' AS DateTime), 2, 0, NULL, 0)
GO
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividendRate], [CreatedDate], [PricePredictionCategoryId], [Status], [UpdatedDate], [IsDeleted]) VALUES (5, CAST(N'12:15:00' AS Time), CAST(N'20:15:00' AS Time), 3, 2, 4, CAST(N'2018-10-05T12:03:04.197' AS DateTime), 2, 0, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[PricePredictionSetting] OFF
GO
SET IDENTITY_INSERT [dbo].[PricePredictionSettingDetail] ON 
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (1, N'C1 - DAILY GAME 01:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 1, 1)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (2, N'C1 - DAILY GAME 01:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 2, 1)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (3, N'C1 - DAILY GAME 09:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 1, 2)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (4, N'C1 - DAILY GAME 09:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 2, 2)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (5, N'C1 - DAILY GAME 17:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 1, 3)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (6, N'C1 - DAILY GAME 17:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 2, 3)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (15, N'C2 - DAILY GAME 03:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 1, 4)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (16, N'C2 - DAILY GAME 03:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 2, 4)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (17, N'C2 - DAILY GAME 12:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 1, 5)
GO
INSERT [dbo].[PricePredictionSettingDetail] ([Id], [Title], [ShortDescription], [LangId], [PricePredictionSettingId]) VALUES (18, N'C2 - DAILY GAME 12:15', N'<b>HIGH or LOWを選ぶだけ！<br/>
１日３回のチャンスを<br/>
掴むのはあなたです！</b>', 2, 5)
GO
SET IDENTITY_INSERT [dbo].[PricePredictionSettingDetail] OFF
GO

UPDATE Setting SET Value = N'181531681' WHERE Name = N'HomeViewId';
UPDATE Setting SET Value = N'181852339' WHERE Name = N'LotteryViewId';
UPDATE Setting SET Value = N'181780573' WHERE Name = N'PricePredictionViewId';
GO
UPDATE LotteryCategory SET ViewId = N'181996355' WHERE Id = 1;
GO
update Setting set Value = N'http://202.53.150.20/' where Name = 'CPLServiceEndPointUrl';

USE CPL;

INSERT INTO PricePredictionDetail VALUES (N'24:00', N'<b>0.0001BTCから遊べて<br/>最高当選100BTC！<br/>億万長者のチャンス</b>', 1, 1);
INSERT INTO PricePredictionDetail VALUES (N'24:00', N'<b>0.0001BTCから遊べて<br/>最高当選100BTC！<br/>億万長者のチャンス</b>', 2, 1);

INSERT INTO PricePredictionDetail VALUES (N'08:00', N'<b>0.0001BTCから遊べて<br/>最高当選100BTC！<br/>億万長者のチャンス</b>', 1, 2);
INSERT INTO PricePredictionDetail VALUES (N'08:00', N'<b>0.0001BTCから遊べて<br/>最高当選100BTC！<br/>億万長者のチャンス</b>', 2, 2);

INSERT INTO PricePredictionDetail VALUES (N'Admin 14:00', N'<b>0.0001BTCから遊べて<br/>最高当選100BTC！<br/>億万長者のチャンス</b>', 1, 3);
INSERT INTO PricePredictionDetail VALUES (N'Admin 14:00', N'<b>0.0001BTCから遊べて<br/>最高当選100BTC！<br/>億万長者のチャンス</b>', 2, 3);

-- DamTran - 20181012 -- Add btcPrice in 24h before current time

DECLARE @tick bigint = 0;
DECLARE @currentTimeInTick bigint = CAST(DATEDIFF(s,'1970-01-01 00:00:00',getutcdate()) As bigint);
WHILE @tick < 86400 --24h
BEGIN
 insert into BTCPrice (Price, [Time]) values (5000 + FLOOR(RAND()*(1000)), @currentTimeInTick - 86400 + @tick);
    SET @tick = @tick + 1;
END;

