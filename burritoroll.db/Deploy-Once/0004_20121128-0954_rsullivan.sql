-- <Migration ID="0f147295-f11e-454a-b202-67004ccb0851" />

PRINT N'Alter [dbo].[getburritos]...';
GO

CREATE PROCEDURE [dbo].[getburritos]
	@param1 int = 0
	
AS
	SELECT @param1
RETURN 0
GO

