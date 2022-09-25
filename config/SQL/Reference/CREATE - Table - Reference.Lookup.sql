USE [BuildingApp]
GO

--DROP TABLE IF EXISTS [Reference].[Lookup]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Reference].[Lookup](
  [LookupID] INT IDENTITY(1,1) NOT NULL,
  [CreatedDateTime] DATETIME NOT NULL,
  [CreatedBy] INT NOT NULL,
  [UpdatedDateTime] DATETIME NULL,
  [UpdatedBy] INT NULL,
  [Active] BIT NOT NULL,
  [SchemaName] VARCHAR(20) NOT NULL,
  [TableName] VARCHAR(100) NOT NULL,
  [FieldName] VARCHAR(30) NOT NULL,
  [ValueName] VARCHAR(50) NOT NULL,
  [DisplayValue] VARCHAR(20) NOT NULL,
  [Value] INT NOT NULL,
  [SortSequence] INT NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE [Reference].[Lookup]
  ADD CONSTRAINT [DF_ReferenceLookup_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [Reference].[Lookup] 
  ADD CONSTRAINT [DF_ReferenceLookup_Active_SetTo1]  
  DEFAULT ((1)) FOR [Active]
GO
