USE DOGPAWS_TEST
GO

CREATE PROC uspGetMotiveID
@M_Name varchar(50),
@M_ID INT OUTPUT
AS
	SET @M_ID = (SELECT MotiveID FROM tblMOTIVE WHERE MotiveName = @M_Name)