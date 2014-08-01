IF OBJECT_ID('[job].[nightlyrollup]') IS NOT NULL
	DROP PROCEDURE [job].[nightlyrollup];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE job.nightlyrollup
AS
SELECT NAME
FROM dbo.burritos
GO
