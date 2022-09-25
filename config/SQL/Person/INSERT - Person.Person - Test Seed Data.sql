USE [BuildingApp]

--TRUNCATE TABLE [Person].[Person]
--GO


INSERT [Person].[Person]
	([CreatedBy],[Status],[Title],[FirstName],[OtherName],[LastName],[PreferredName],[Type],[Comments])
VALUES
	(1,1,'Mr','Geoff','A','Klinger','Geordie',1,'Comments Hello'),
	(1,5,'Mrs','Jackie',NULL,'Jones','J-dawg',1,NULL),
	(2,4,'Dr','F',NULL,'Can','Do It',2,NULL),
	(2,3,'','G',NULL,'GG','GGG',2,NULL),
	(3,1,NULL,'H',NULL,'H','H',2,NULL),
	(4,3,'Clcr','I','J','K','L',2,NULL)



	SELECT * FROM [BuildingApp].[Person].[Person]