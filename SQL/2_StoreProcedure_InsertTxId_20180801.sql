USE [CPL]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertTxIdToBTCTransaction]    Script Date: 8/1/2018 11:17:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_InsertTxIdToBTCTransaction]
	-- Add the parameters for the stored procedure here
	@TxId nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[BTCTransaction]([TxId],[UpdateTime]) VALUES (@TxId, NULL);
END
