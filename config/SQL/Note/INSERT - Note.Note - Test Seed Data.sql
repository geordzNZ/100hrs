USE [BuildingApp]

--TRUNCATE TABLE [Note].[Note]
--GO


INSERT [Note].[Note]
	([CreatedBy],[Status],[MessageType],[Subject],[Body],[DeliveryDateTime],[StorageLocation])
VALUES
	(1,1,1,'This is the Subject','This is the body',GETDATE(),1),
	(1,5,2,'Subject blah blah','This is the body',GETDATE(),3),
	(2,4,3,'DELIVERY NOTE','This is the body',GETDATE(),4),
	(2,3,1,'This is the Subject','This is the body',GETDATE(),5),
	(3,1,2,'Fire Alarm','This is the body',GETDATE(),3),
	(4,3,4,'Maintenance notice','This is the body',GETDATE(),2)



	SELECT *
  FROM [BuildingApp].[Note].[Note]