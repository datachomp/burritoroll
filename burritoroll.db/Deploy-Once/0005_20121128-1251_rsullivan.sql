-- <Migration ID="35cc8de0-f0f4-4617-bc89-e6dcb8c3287d" />



Print 'Create Procedure [dbo].[gettacos]'
GO
CREATE PROCEDURE dbo.gettacos
AS
SELECT NAME,price
FROM dbo.tacos
GO

