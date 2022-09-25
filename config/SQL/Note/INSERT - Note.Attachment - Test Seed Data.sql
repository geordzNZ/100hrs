USE [BuildingApp]

--TRUNCATE TABLE Note.Attachment
--GO


INSERT [Note].[Attachment]
	(NoteID, FileType, FilePath)
VALUES
	(1,'xlsx','C:\Excel files'),
	(2,'docx','C:\Word Docs'),
	(2,'pdf','C:\PDFs'),
	(3,'html','C:\Web'),
	(4,'rdl','C:\Reports'),
	(6,'txt','C:\Text Files')


	SELECT *
  FROM [BuildingApp].[Note].[Attachment]