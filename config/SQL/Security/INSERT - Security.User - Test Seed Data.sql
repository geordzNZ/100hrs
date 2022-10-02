USE [BuildingApp]

--TRUNCATE TABLE [Security].[User]
--GO


INSERT [Security].[User]
	([CreatedBy],[Status],[LoginEmail],[PersonID],[Password],[Salt])
VALUES
	(1,1,'gk@gmail.com',1,'aaa','aaa'),
	(1,1,'b@bb.com',2,'bbb','bbb'),
	(1,1,'c@cc.com',3,'ccc','ccc'),
	(1,1,'d@dd.com',4,'ddd','ddd'),
	(1,1,'e@ee.com',5,'eee','eee'),
	(1,1,'f@ff.com',6,'fff','fff')

  

	SELECT *
  FROM [BuildingApp].[Security].[User]