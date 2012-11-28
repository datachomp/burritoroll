-- <Migration ID="962ef2e0-8b4b-4ce6-9a8a-134e41d7ef6d" />




PRINT N'Altering [dbo].[burritos]...';


GO
ALTER TABLE [dbo].[burritos]
    ADD [calories] INT CONSTRAINT [DF_burritos_calories] DEFAULT 0 NOT NULL;

