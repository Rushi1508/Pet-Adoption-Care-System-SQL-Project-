/*
    Project Title: Pet Adoption & Care System
    Group Number: 82
    Group Members: Rushi Vasantkumar Parikh, Mitali Kamal Bagadia
    Course: IFT 530 - Arizona State University
    Description: SQL Script to create Stored procedures and UDF for Pet Adoption & Care System.
    Date: 05/02/2025
*/

-- Drop the stored procedure if it already exists
IF OBJECT_ID('sp_AddPetType', 'P') IS NOT NULL
    DROP PROCEDURE sp_AddPetType;
GO

-- Now recreate the procedure
CREATE PROCEDURE sp_AddPetType
    @type_name VARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM PetTypes WHERE type_name = @type_name)
        PRINT 'Pet type already exists.';
    ELSE
    BEGIN
        INSERT INTO PetTypes (type_name)
        VALUES (@type_name);
        PRINT 'New pet type added successfully.';
    END
END;
GO

EXEC sp_AddPetType 'Rabbit';


IF OBJECT_ID('fn_GetAdoptionCountByAdopter', 'FN') IS NOT NULL
    DROP FUNCTION fn_GetAdoptionCountByAdopter;
GO

CREATE FUNCTION fn_GetAdoptionCountByAdopter (@adopter_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @count INT;

    SELECT @count = COUNT(*)
    FROM Adoptions
    WHERE adopter_id = @adopter_id;

    RETURN @count;
END;
GO

SELECT dbo.fn_GetAdoptionCountByAdopter(1) AS AdoptionCount;
