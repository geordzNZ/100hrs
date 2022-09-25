USE [BuildingApp]
GO

--DROP TABLE IF EXISTS [Reference].[Lookup]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Reference].[Lookup](

) ON [PRIMARY]
GO

ALTER TABLE [Reference].[Lookup]
  ADD CONSTRAINT [DF_ReferenceLookup_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [Reference].[Lookup] 
  ADD CONSTRAINT [DF_ReferenceLookup_Attachment_SetTo0]  
  DEFAULT (0) FOR [Attachment]
GO

ALTER TABLE [Reference].[Lookup] 
  ADD CONSTRAINT [DF_ReferenceLookup_IsCollected_SetTo0]  
  DEFAULT (0) FOR [IsCollected]
GO