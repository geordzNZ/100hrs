USE [BuildingApp]
GO

--DROP TABLE IF EXISTS [Security].[User]
--GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Security].[User](
	[SecurityUserID] INT IDENTITY(1,1) NOT NULL,
	[CreatedDateTime] DATETIME NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDateTime] DATETIME NULL,
	[UpdatedBy] INT NULL,
	[Status] BIT NOT NULL,
	[LoginEmail] VARCHAR(50) NOT NULL,
	[PersonID] INT NOT NULL,
	[Password] VARCHAR(100) NOT NULL,
	[Salt] VARCHAR(100) NOT NULL,
	[PasswordLastChanged] DATETIME NOT NULL,
	[BadAttempts] INT NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE [Security].[User]
  ADD CONSTRAINT [DF_SecurityUser_CreatedDateTime_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [CreatedDateTime]
GO

ALTER TABLE [Security].[User] 
  ADD CONSTRAINT [DF_SecurityUser_Status_SetTo1]  
  DEFAULT (1) FOR [Status]
GO

ALTER TABLE [Security].[User]
  ADD CONSTRAINT [DF_SecurityUser_PasswordLastChanged_SetToCurrentDateTime]  
  DEFAULT (GETDATE()) FOR [PasswordLastChanged]
GO

ALTER TABLE [Security].[User] 
  ADD CONSTRAINT [DF_SecurityUser_BadAttempts_SetTo1]  
  DEFAULT (1) FOR [BadAttempts]
GO

CREATE INDEX [idx_SecurityUSerID]
	ON [Security].[User]  (SecurityUserID);
GO