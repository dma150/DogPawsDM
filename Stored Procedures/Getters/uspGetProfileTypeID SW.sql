USE DOGPAWS_TEST
GO

CREATE PROC uspGetProfileTypeID
@PT_Name varchar(50),
@PT_ID INT OUTPUT
AS
SET @PT_ID = (SELECT ProfileTypeID FROM tblPROFILE_TYPE WHERE ProfileTypeName = @PT_Name)
