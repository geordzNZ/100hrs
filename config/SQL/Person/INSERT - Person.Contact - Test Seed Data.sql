USE [BuildingApp]

--TRUNCATE TABLE [Person].[Contact]
--GO


INSERT [Person].[Contact]
	([PersonID],[CreatedBy],[Status],[Type],[Primary],[Number],[Email])
VALUES
	(1,1,1,1,1,'123456789','aaa@testZemail.com'),
	(1,1,2,2,0,'123456789','bbb@testZemail.com'),
	(1,2,1,4,0,'123456789','ccc@testZemail.com'),
	(2,2,2,3,0,'123456789','ddd@testZemail.com'),
	(3,3,1,3,1,'123456789','eee@testZemail.com'),
	(4,3,2,2,1,'123456789','fff@testZemail.com')

  

SELECT * FROM [BuildingApp].[Person].[Contact]