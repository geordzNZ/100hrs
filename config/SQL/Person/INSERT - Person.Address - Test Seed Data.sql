USE [BuildingApp]

--TRUNCATE TABLE [Person].[Address]
--GO


INSERT [Person].[Address]
	([PersonID],[CreatedBy],[Status],[Type],[Primary],[Line1],[Line2],[Line3],[City],[PostCode],[County],[Country],[Building],[Floor],[Area])
VALUES
	(1,1,1,1,1,'Line1','Line2','Line3','City','PostCod','County','Country',1,2,1),
	(1,1,2,1,1,'XX','','','YY','ZZ','','AA',1,2,1),
	(1,2,3,2,1,'L1',NULL,NULL,'C1','PC','C2','C3',1,2,1)


SELECT * FROM [BuildingApp].[Person].[Address]