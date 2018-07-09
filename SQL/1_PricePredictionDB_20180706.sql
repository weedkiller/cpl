/*
   Friday, July 6, 20183:44:05 PM
   User: 
   Server: DESKTOP-KDJU0MP\SQLEXPRESS
   Database: CPL
   Application: 
*/

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
CREATE TABLE dbo.PricePredictionHistory
	(
	Id int NOT NULL,
	PricePredictionId int NOT NULL,
	SysUserId int NOT NULL,
	CreatedDate datetime NOT NULL,
	Amount money NOT NULL,
	Prediction bit NOT NULL,
	Result nvarchar(20) NULL,
	Award money NOT NULL,
	UpdatedDate datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.PricePredictionHistory ADD CONSTRAINT
	PK_PricePredictionHistory PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PricePredictionHistory SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.PricePrediction
	(
	Id int NOT NULL,
	Name nvarchar(50) NOT NULL,
	Description ntext NULL,
	OpenTime datetime NOT NULL,
	EndTime datetime NOT NULL,
	PredictionResultTime datetime NOT NULL,
	PredictionPrice money NOT NULL,
	ResultPrice money NULL,
	NumberOfPredictors int NOT NULL,
	Volume money NOT NULL,
	Coinbase nvarchar(10) NOT NULL,
	UpdatedDate datetime NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.PricePrediction ADD CONSTRAINT
	PK_PricePrediction PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PricePrediction SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
