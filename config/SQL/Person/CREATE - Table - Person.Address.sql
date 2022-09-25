USE [BuildingApp]
GO

--DROP TABLE IF EXISTS [Person].[Address]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Person].[Address](
  [AddressID] INT IDENTITY(1,1) NOT NULL,
  [PersonID] INT NOT NULL,
  [CreatedDateTime] DATETIME NOT NULL,
  [CreatedBy] INT NOT NULL,
  [UpdatedDateTime] DATETIME NULL,
  [UpdatedBy] INT NULL,
  [Status] INT NOT NULL,
  [Type] INT NOT NULL,
  [Primary] BIT NOT NULL,
  [Line1] VARCHAR(50) NOT NULL,
  [Line2] VARCHAR(50) NULL,
  [Line3] VARCHAR(50) NULL,
  [City] VARCHAR(50) NOT NULL,
  [PostCode] VARCHAR(7) NOT NULL,
  [County] VARCHAR(50) NULL,
  [Country] VARCHAR(50) NOT NULL,
  [Building] INT NULL,
  [Floor] INT NULL,
  [Area] INT NULL,
  [Comments] VARCHAR(5000) NULL,
) ON [PRIMARY]
GO

ALTER TABLE [Person].[Address]
  ADD CONSTRAINT [DF_PersonAddress_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [Person].[Address] 
  ADD CONSTRAINT [DF_PersonAddress_Primary_SetTo1]  
  DEFAULT (1) FOR [Primary]
GO
