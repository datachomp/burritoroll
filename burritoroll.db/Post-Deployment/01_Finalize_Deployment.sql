/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE dbo.[tacos] AS Target
USING (
	SELECT  'Amigo' AS NAME ,2 AS price
	UNION ALL
	SELECT  'Cheech' AS NAME ,2 AS price
--SELECT * FROM dbo.tacos
) AS Source
ON (Target.name = Source.name AND Target.price = Source.price)
--WHEN MATCHED THEN
  --  UPDATE SET Target.price = Source.price
WHEN NOT MATCHED BY TARGET THEN
    INSERT (NAME, price)
    VALUES (Source.name, Source.price)
OUTPUT source.name, SOURCE.price;



MERGE dbo.[burritos] AS Target
USING (
	SELECT  'Guapo' AS NAME , 4 AS price
	UNION ALL
	SELECT  'Hombre' AS NAME , 10 AS price
	UNION ALL
    SELECT  'Bebe' AS NAME , 6 AS price
--SELECT * FROM dbo.tacos
) AS Source
ON (Target.name = Source.name AND Target.price = Source.price)
--WHEN MATCHED THEN
  --  UPDATE SET Target.price = Source.price
WHEN NOT MATCHED BY TARGET THEN
    INSERT (NAME, price)
    VALUES (Source.name, Source.price)
OUTPUT source.name, SOURCE.price;