USE DOGPAWS_TEST
GO

CREATE PROC uspGetFriendID
@P_ID1 INT,
@P_ID2 INT,
@F_ID INT OUTPUT
AS
Set @F_ID = (SELECT FriendID FROM tblFRIEND WHERE ProfileID1 = @P_ID1 AND ProfileID2 = @P_ID2)