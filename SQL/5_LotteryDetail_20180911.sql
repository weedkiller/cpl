/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
USE CPL;
GO
CREATE TABLE dbo.LotteryDetail
	(
	Id int NOT NULL IDENTITY (1, 1),
	LotteryId int NOT NULL,
	LangId int NOT NULL,
	DesktopTopImage nvarchar(200) NOT NULL,
	DesktopListingImage nvarchar(200) NOT NULL,
	MobileListingImage nvarchar(200) NOT NULL,
	MobileTopImage nvarchar(200) NOT NULL,
	PrizeImage nvarchar(200) NOT NULL,
	Description ntext NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.LotteryDetail ADD CONSTRAINT
	PK_LotteryDetail PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.LotteryDetail SET (LOCK_ESCALATION = TABLE)
GO
COMMIT