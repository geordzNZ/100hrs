USE [BuildingApp]
GO

--DROP TABLE IF EXISTS Person.Person
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Person].[Person](
  [PersonID] INT IDENTITY(1,1) NOT NULL,
  [CreatedDateTime] DATETIME NOT NULL,
  [CreatedBy] INT NOT NULL,
  [UpdatedDateTime] DATETIME NULL,
  [UpdatedBy] INT NULL,
  [Status] INT NOT NULL,
  [Title] VARCHAR(20) NULL,
  [FirstName] VARCHAR(50) NOT NULL,
  [OtherName] VARCHAR(50) NULL,
  [LastName] VARCHAR(50) NULL,
  [PreferredName] VARCHAR(50) NULL,
  [Type] INT NOT NULL,
  [Comments] VARCHAR(5000) NULL,
) ON [PRIMARY]
GO

ALTER TABLE [Person].[Person]
  ADD CONSTRAINT [DF_PersonPerson_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO