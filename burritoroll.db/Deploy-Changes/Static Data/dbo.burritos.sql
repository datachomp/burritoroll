
MERGE dbo.[burritos] AS Target
USING (
	SELECT  'Guapo' AS NAME , 4 AS price
	UNION ALL
	SELECT  'Hombre' AS NAME , 10 AS price
	UNION ALL
	SELECT  'Bebe' AS NAME , 6 AS price
	UNION ALL
	SELECT  'Tostada' AS NAME , 7 AS price
--SELECT * FROM dbo.tacos
) AS Source
ON (Target.name = Source.name AND Target.price = Source.price)
--WHEN MATCHED THEN
  --  UPDATE SET Target.price = Source.price
WHEN NOT MATCHED BY TARGET THEN
	INSERT (NAME, price)
	VALUES (Source.name, Source.price)
OUTPUT source.name, SOURCE.price;
