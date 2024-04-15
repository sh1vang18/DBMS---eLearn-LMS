CREATE PROCEDURE LoginUser
    @username VARCHAR(255),
    @password VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @userId INT;

    SELECT @userId = userId
    FROM Users
    WHERE username = @username AND password = @password;

    IF @userId IS NOT NULL
    BEGIN
        SELECT 1 AS 'LoginResult';
    END
    ELSE
    BEGIN
        SELECT 0 AS 'LoginResult';
    END
END;
