USE [CPL]
GO
-- Delete
DELETE FROM [dbo].[LangDetail] WHERE [Name] = 'StreetAddress' and [Value] like N'%Please fill in street address%';
DELETE FROM [dbo].[LangDetail] WHERE [Name] = 'ExistingEmail' and [Value] like N'%Email is existing%';

-- Insert
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Amount', N'Amount');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Award', N'Award');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Result', N'Result');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'TransactionHistory', N'Transaction History');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'HoldingPercentage', N'Holding Percentage');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'BetStatisticChart', N'Bet Statistic Chart');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'AllAsset', N'All asset in');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Bonus', N'Bonus');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'ExpireIn', N'expires in');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Days', N'days');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'PlayGame', N'Play Game');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Increase', N'Increase');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Transactions', N'Transactions');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'View', N'View');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Check', N'Check');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'GameHistory', N'game history');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'EditAccount', N'Edit Account');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Profile', N'Profile');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'DepositWarning', N'Remember, deposit is risk-free. If you want to take back your asset, you can withdraw them.');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Cryptocurrency', N'Cryptocurrency');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Available', N'Available');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'QRCode', N'QR Code');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'BTCName', N'Bitcoin');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'ETHName', N'Ethereum');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Copy', N'Copy');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Withdraw', N'Withdraw');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'BTCWithdrawWarning', N'You are about to withdraw <span class="text-bold-700 text-uppercase mb-0">BTC</span> from your account');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'ETHWithdrawWarning', N'You are about to withdraw <span class="text-bold-700 text-uppercase mb-0">ETH</span> from your account');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Max', N'Max');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'TokenName', N'CPL Token');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'TokenReferral', N'CPL Referral');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'TokenPrice', N'CPL Price');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Raised', N'Raised');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'USDSymbol', N'USD');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'EditEmail', N'Edit Email');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'CurrentEmail', N'Current email');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'NewEmail', N'New email');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'ExistEmail', N'Existing email');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'NewEmailConfirm', N'New email confirm');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'MismatchEmail', N'Mismatch email');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'EditPassword', N'Edit Password');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'CurrentPassword', N'Current password');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'NewPassword', N'New password');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'NewPasswordConfirm', N'New password confirm');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Yes', N'Yes');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'Cancel', N'Cancel');
INSERT [dbo].[LangDetail] ([LangId], [Name], [Value]) VALUES (1, N'LogoutConfirm', N'Are you sure you want to logout?');

