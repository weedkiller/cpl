INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'UserManagement', N'User Management')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'UserManagement', N'ユーザー管理')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Total', N'Total')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'Total', N'合計')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Search', N'Search')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'Search', N'サーチ')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'AllUsers', N'All Users')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'AllUsers', N'すべてのユーザー')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'ETHWalletAddress', N'ETH Wallet Address')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'ETHWalletAddress', N'ETHウォレット住所')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'BTCWalletAddress', N'BTC Wallet Address')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'BTCWalletAddress', N'BTCウォレット住所')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'IsDeleted', N'Is Deleted')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'IsDeleted', N'削除されました')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'User', N'User')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'User', N'ユーザー')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'AddressRequired', N'Please fill in your address')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'AddressRequired', N'住所を記入してください')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'InvalidOrExistingEmail', N'Invalid or existing email')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'InvalidOrExistingEmail', N'無効なメールまたは既存のメール')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'InvalidMobileNumber', N'Invalid mobile number')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'InvalidMobileNumber', N'携帯電話番号が無効です')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'IsTwoFactorAuthenticationEnabled', N'Is two-factor authentication enable?')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'IsTwoFactorAuthenticationEnabled', N'二段階認証は有効になっていますか？')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Update', N'Update')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'Update', N'更新')

INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Delete', N'Delete')
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (2, N'Delete', N'削除')

ALTER TABLE SysUser DROP COLUMN BTCWalletAddress, ETHWalletAddress;