USE [BuildingApp]
GO

--DROP TABLE IF EXISTS [Person].[Contact]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Person].[Contact](
  [ContactID] INT IDENTITY(1,1) NOT NULL,
  [PersonID] INT NOT NULL,
  [CreatedDateTime] DATETIME NOT NULL,
  [CreatedBy] INT NOT NULL,
  [UpdatedDateTime] DATETIME NULL,
  [UpdatedBy] INT NULL,
  [Status] INT NOT NULL,
  [Type] INT NOT NULL,
  [Primary] BIT NOT NULL,
  [Number] VARCHAR(50) NULL,
  [Email] VARCHAR(50) NULL,
  [Comments] VARCHAR(5000) NULL,
) ON [PRIMARY]
GO

ALTER TABLE [Person].[Contact]
  ADD CONSTRAINT [DF_PersonContact_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [Person].[Contact] 
  ADD CONSTRAINT [DF_PersonContact_Primary_SetTo1]  
  DEFAULT (1) FOR [Primary]
GO
