USE [BuildingApp]

--TRUNCATE TABLE Note.Recipient
--GO


INSERT [Note].[Recipient]
	(NoteID, UserID, GroupID)
VALUES
	(1,1,NULL),
	(2,2,NULL),
	(2,4,NULL),
	(3,NULL,6),
	(4,NULL,2),
	(6,NULL,4)


	SELECT *
  FROM [BuildingApp].[Note].[Recipient]