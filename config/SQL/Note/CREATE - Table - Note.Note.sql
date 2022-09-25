USE [BuildingApp]
GO

--DROP TABLE IF EXISTS Note.Note
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Note].[Note](
  [NoteID] INT IDENTITY(1,1) NOT NULL,
  [CreatedDateTime] DATETIME NOT NULL,
  [CreatedBy] INT NOT NULL,
  [UpdatedDateTime] DATETIME NULL,
  [UpdatedBy] INT NULL,
  [Status] INT NOT NULL,
  [MessageType] INT NOT NULL,
  [Subject] VARCHAR(50) NOT NULL,
  [Body] VARCHAR(5000) NULL,
  [Attachment] BIT NOT NULL,
  [PackagingDescription] VARCHAR(100) NULL,
  [PackagingCondition] VARCHAR(100) NULL,
  [DeliveryDateTime] DATETIME NOT NULL,
  [StorageLocation] INT NOT NULL,
  [IsCollected] BIT NOT NULL,
  [CollectedBy] INT NULL,
  [CollectedDateTime] DATETIME NULL,
  [ValidFromDateTime] DATETIME NULL,
  [ValidToDateTime] DATETIME NULL,
  [Comments] VARCHAR(5000) NULL
) ON [PRIMARY]
GO

ALTER TABLE [Note].[Note] 
  ADD CONSTRAINT [DF_NoteNote_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [Note].[Note] 
  ADD CONSTRAINT [DF_NoteNote_Attachment_SetTo0]  
  DEFAULT (0) FOR [Attachment]
GO

ALTER TABLE [Note].[Note] 
  ADD CONSTRAINT [DF_NoteNote_IsCollected_SetTo0]  
  DEFAULT (0) FOR [IsCollected]
GO