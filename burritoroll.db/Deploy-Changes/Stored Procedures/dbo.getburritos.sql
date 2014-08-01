IF OBJECT_ID('[dbo].[getburritos]') IS NOT NULL
	DROP PROCEDURE [dbo].[getburritos];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getburritos]
	@param1 int = 0
	
AS
	SELECT @param1
RETURN 0
GO
