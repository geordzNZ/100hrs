USE [BuildingApp]
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Note')
	BEGIN
		EXEC('CREATE SCHEMA Note')
	END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Person')
	BEGIN
		EXEC('CREATE SCHEMA Person')
  END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Reference')
	BEGIN
		EXEC('CREATE SCHEMA Reference')
  END
GO


IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Security')
	BEGIN
		EXEC('CREATE SCHEMA Security')
	END
GO