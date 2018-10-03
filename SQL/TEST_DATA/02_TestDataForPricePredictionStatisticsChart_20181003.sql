USE [CPL]
GO
SET IDENTITY_INSERT [dbo].[PricePrediction] ON 

INSERT [dbo].[PricePrediction] ([Id], [Name], [Description], [ResultPrice], [NumberOfPredictors], [Volume], [Coinbase], [UpdatedDate], [OpenBettingTime], [CloseBettingTime], [ResultTime], [ToBeComparedTime], [ToBeComparedPrice], [PricePredictionSettingId]) VALUES (1, N'Price Prediction #9/27/2018 1:15:00 AM', NULL, NULL, NULL, NULL, N'BTCUSDT', NULL, CAST(N'2018-09-27T01:15:00.010' AS DateTime), CAST(N'2018-09-28T00:00:00.010' AS DateTime), CAST(N'2018-09-28T01:15:00.010' AS DateTime), CAST(N'2018-09-28T01:00:00.010' AS DateTime), NULL, 1)
INSERT [dbo].[PricePrediction] ([Id], [Name], [Description], [ResultPrice], [NumberOfPredictors], [Volume], [Coinbase], [UpdatedDate], [OpenBettingTime], [CloseBettingTime], [ResultTime], [ToBeComparedTime], [ToBeComparedPrice], [PricePredictionSettingId]) VALUES (2, N'Price Prediction #9/27/2018 9:15:00 AM', NULL, NULL, NULL, NULL, N'BTCUSDT', NULL, CAST(N'2018-09-27T09:15:00.007' AS DateTime), CAST(N'2018-09-28T08:00:00.007' AS DateTime), CAST(N'2018-09-28T09:15:00.007' AS DateTime), CAST(N'2018-09-28T09:00:00.007' AS DateTime), NULL, 4)
SET IDENTITY_INSERT [dbo].[PricePrediction] OFF
SET IDENTITY_INSERT [dbo].[PricePredictionCategory] ON 

INSERT [dbo].[PricePredictionCategory] ([Id]) VALUES (1)
INSERT [dbo].[PricePredictionCategory] ([Id]) VALUES (2)
SET IDENTITY_INSERT [dbo].[PricePredictionCategory] OFF
SET IDENTITY_INSERT [dbo].[PricePredictionCategoryDetail] ON 

INSERT [dbo].[PricePredictionCategoryDetail] ([Id], [Name], [Description], [PricePredictionCategoryId], [LangId]) VALUES (3, N'Price Prediction 2', NULL, 2, 1)
INSERT [dbo].[PricePredictionCategoryDetail] ([Id], [Name], [Description], [PricePredictionCategoryId], [LangId]) VALUES (4, N'価格予測2', NULL, 2, 2)
SET IDENTITY_INSERT [dbo].[PricePredictionCategoryDetail] OFF
SET IDENTITY_INSERT [dbo].[PricePredictionHistory] ON 

INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (1, 1, 1, CAST(N'2018-10-02T00:00:00.000' AS DateTime), 100.0000, 1, N'WIN', 10.0000, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 110.0000)
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (2, 1, 1, CAST(N'2018-09-02T00:00:00.000' AS DateTime), 100.0000, 1, N'WIN', 10.0000, CAST(N'2018-09-12T00:00:00.000' AS DateTime), 310.0000)
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (3, 1, 1, CAST(N'2018-08-02T00:00:00.000' AS DateTime), 100.0000, 1, N'WIN', 10.0000, CAST(N'2018-08-12T00:00:00.000' AS DateTime), 210.0000)
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (4, 2, 1, CAST(N'2018-09-02T00:00:00.000' AS DateTime), 10.0000, 1, N'WIN', 0.0000, CAST(N'2018-08-12T00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (5, 2, 1, CAST(N'2018-09-02T00:00:00.000' AS DateTime), 150.0000, 1, N'WIN', 0.0000, CAST(N'2018-09-12T00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[PricePredictionHistory] ([Id], [PricePredictionId], [SysUserId], [CreatedDate], [Amount], [Prediction], [Result], [Award], [UpdatedDate], [TotalAward]) VALUES (6, 2, 1, CAST(N'2018-10-02T00:00:00.000' AS DateTime), 300.0000, 1, N'WIN', 0.0000, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0.0000)
SET IDENTITY_INSERT [dbo].[PricePredictionHistory] OFF
SET IDENTITY_INSERT [dbo].[PricePredictionSetting] ON 

INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividedRate], [CreatedDate], [PricePredictionCategoryId]) VALUES (4, CAST(N'2018-10-08T01:15:00.000' AS DateTime), CAST(N'2018-10-08T22:45:00.000' AS DateTime), 1, 15, 80, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividedRate], [CreatedDate], [PricePredictionCategoryId]) VALUES (5, CAST(N'2018-10-08T09:15:00.000' AS DateTime), CAST(N'2018-10-09T08:00:00.000' AS DateTime), 1, 15, 80, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PricePredictionSetting] ([Id], [OpenBettingTime], [CloseBettingTime], [HoldingTimeInterval], [ResultTimeInterval], [DividedRate], [CreatedDate], [PricePredictionCategoryId]) VALUES (6, CAST(N'2018-10-08T17:15:00.000' AS DateTime), CAST(N'2018-10-09T16:00:00.000' AS DateTime), 1, 15, 80, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[PricePredictionSetting] OFF
