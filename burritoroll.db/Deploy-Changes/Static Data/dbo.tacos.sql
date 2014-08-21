
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
