-- <Migration ID="b19c50c2-edc3-48f0-989a-dfe15f92724a" />



Print 'Create Schema [cya]'
GO
CREATE SCHEMA [cya]
	AUTHORIZATION [dbo]
GO


Print 'Create Schema [job]'
GO
CREATE SCHEMA [job]
	AUTHORIZATION [dbo]
GO


Print 'Create Schema [reporting]'
GO
CREATE SCHEMA [reporting]
	AUTHORIZATION [dbo]
GO


Print 'Create Table [dbo].[burritos]'
GO
CREATE TABLE [dbo].[burritos] (
		[burritoid]       [int] IDENTITY(1, 1) NOT NULL,
		[name]            [varchar](50) NULL,
		[price]           [smallint] NULL,
		[datecreated]     [smalldatetime] NOT NULL
)
GO


Print 'Add Primary Key [PK_burritos] to [dbo].[burritos]'
GO
ALTER TABLE [dbo].[burritos]
	ADD
	CONSTRAINT [PK_burritos]
	PRIMARY KEY
	CLUSTERED
	([burritoid])
GO


Print 'Add Default Constraint [DF_burritos_datecreated] to [dbo].[burritos]'
GO
ALTER TABLE [dbo].[burritos]
	ADD
	CONSTRAINT [DF_burritos_datecreated]
	DEFAULT (getdate()) FOR [datecreated]
GO


ALTER TABLE [dbo].[burritos] SET (LOCK_ESCALATION = TABLE)
GO


Print 'Create Table [dbo].[configs]'
GO
CREATE TABLE [dbo].[configs] (
		[configid]        [int] IDENTITY(1, 1) NOT NULL,
		[name]            [varchar](100) NOT NULL,
		[value]           [varchar](300) NOT NULL,
		[datecreated]     [smalldatetime] NOT NULL
)
GO


Print 'Add Primary Key [PK_configs] to [dbo].[configs]'
GO
ALTER TABLE [dbo].[configs]
	ADD
	CONSTRAINT [PK_configs]
	PRIMARY KEY
	CLUSTERED
	([configid])
GO


ALTER TABLE [dbo].[configs] SET (LOCK_ESCALATION = TABLE)
GO


Print 'Create Table [dbo].[tacos]'
GO
CREATE TABLE [dbo].[tacos] (
		[tacoid]          [int] IDENTITY(1, 1) NOT NULL,
		[name]            [varchar](50) NULL,
		[price]           [smallint] NULL,
		[datecreated]     [smalldatetime] NOT NULL
)
GO


Print 'Add Primary Key [PK_tacos] to [dbo].[tacos]'
GO
ALTER TABLE [dbo].[tacos]
	ADD
	CONSTRAINT [PK_tacos]
	PRIMARY KEY
	CLUSTERED
	([tacoid])
GO


Print 'Add Default Constraint [DF_tacos_datecreated] to [dbo].[tacos]'
GO
ALTER TABLE [dbo].[tacos]
	ADD
	CONSTRAINT [DF_tacos_datecreated]
	DEFAULT (getdate()) FOR [datecreated]
GO


ALTER TABLE [dbo].[tacos] SET (LOCK_ESCALATION = TABLE)
GO


Print 'Create Table [cya].[dummytable]'
GO
CREATE TABLE [cya].[dummytable] (
		[configid]        [int] IDENTITY(1, 1) NOT NULL,
		[name]            [varchar](100) NOT NULL,
		[value]           [varchar](300) NOT NULL,
		[datecreated]     [smalldatetime] NOT NULL
)
GO


ALTER TABLE [cya].[dummytable] SET (LOCK_ESCALATION = TABLE)
GO


Print 'Create Procedure [job].[nightlyrollup]'
GO

CREATE PROCEDURE job.nightlyrollup
AS
SELECT NAME
FROM dbo.burritos
GO


Print 'Create Procedure [reporting].[endofmonthreport]'
GO
CREATE PROCEDURE reporting.endofmonthreport
AS
SELECT name
FROM dbo.burritos
GO


