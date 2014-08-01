IF OBJECT_ID('[reporting].[endofmonthreport]') IS NOT NULL
	DROP PROCEDURE [reporting].[endofmonthreport];

GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE reporting.endofmonthreport
AS
SELECT name
FROM dbo.burritos
GO
