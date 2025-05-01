-- Drop views if they exist
DROP VIEW IF EXISTS AvailableYoungPets;
DROP VIEW IF EXISTS AdoptionSummary;
DROP VIEW IF EXISTS VetVisitRecords;

-- Recreate Views
GO
CREATE VIEW AvailableYoungPets AS
SELECT p.pet_id, p.name, pt.type_name, p.age, p.status
FROM Pets p
JOIN PetTypes pt ON p.pet_type_id = pt.pet_type_id
WHERE p.status = 'Available' AND p.age < 4;
GO

CREATE VIEW AdoptionSummary AS
SELECT a.adoption_id, a.adoption_date, a.fee_paid,
       p.name AS pet_name, ad.full_name AS adopter_name, ad.email
FROM Adoptions a
JOIN Pets p ON a.pet_id = p.pet_id
JOIN Adopters ad ON a.adopter_id = ad.adopter_id
WHERE a.fee_paid >= 0;
GO

CREATE VIEW VetVisitRecords AS
SELECT v.visit_id, v.visit_date, v.diagnosis, p.name AS pet_name, s.full_name AS vet_name
FROM VetVisits v
JOIN Pets p ON v.pet_id = p.pet_id
JOIN Staff s ON v.staff_id = s.staff_id
WHERE s.role = 'Vet';
GO

-- Step 5: Audit Table and Trigger for PetTypes

DROP TABLE IF EXISTS PetTypes_Audit;
DROP TRIGGER IF EXISTS trg_PetTypes_Audit;
GO

CREATE TABLE PetTypes_Audit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    operation VARCHAR(10),
    pet_type_id INT,
    type_name VARCHAR(50),
    changed_at DATETIME DEFAULT GETDATE()
);
GO

CREATE TRIGGER trg_PetTypes_Audit
ON PetTypes
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- INSERT
    INSERT INTO PetTypes_Audit (operation, pet_type_id, type_name)
    SELECT 'INSERT', pet_type_id, type_name FROM inserted;

    -- UPDATE
    INSERT INTO PetTypes_Audit (operation, pet_type_id, type_name)
    SELECT 'UPDATE', pet_type_id, type_name
    FROM inserted
    WHERE EXISTS (
        SELECT 1 FROM deleted
        WHERE deleted.pet_type_id = inserted.pet_type_id
          AND deleted.type_name <> inserted.type_name
    );

    -- DELETE
    INSERT INTO PetTypes_Audit (operation, pet_type_id, type_name)
    SELECT 'DELETE', pet_type_id, type_name FROM deleted;
END;
GO

-- Test Commands
INSERT INTO PetTypes (type_name) VALUES ('Hamster');
UPDATE PetTypes SET type_name = 'Doggo' WHERE type_name = 'Dog';
DELETE FROM PetTypes WHERE type_name = 'Rabbit';

-- Check Audit Records
SELECT * FROM PetTypes_Audit;


USE Pet_Adoption_Care_System;

-- Drop existing SP and UDF if they exist
DROP PROCEDURE IF EXISTS GetAvailablePetsByType;
DROP FUNCTION IF EXISTS dbo.GetPetCountByType;
GO

-- Stored Procedure: Get available pets by type
CREATE PROCEDURE GetAvailablePetsByType
    @TypeName VARCHAR(50)
AS
BEGIN
    SELECT p.pet_id, p.name, pt.type_name, p.age, p.status
    FROM Pets p
    JOIN PetTypes pt ON p.pet_type_id = pt.pet_type_id
    WHERE p.status = 'Available' AND pt.type_name = @TypeName;
END;
GO

-- User Defined Function: Count pets by type
CREATE FUNCTION dbo.GetPetCountByType (@TypeName VARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;
    SELECT @Count = COUNT(*)
    FROM Pets p
    JOIN PetTypes pt ON p.pet_type_id = pt.pet_type_id
    WHERE pt.type_name = @TypeName;
    RETURN @Count;
END;
GO

-- 🧪 Test the Stored Procedure and UDF

-- Ensure Buddy is set to Available for the test
UPDATE Pets SET status = 'Available' WHERE name = 'Buddy';
GO

-- Test the procedure
EXEC GetAvailablePetsByType @TypeName = 'Dog';
GO

-- Test the UDF
SELECT dbo.GetPetCountByType('Dog') AS PetCount;
GO

-- Step 7: Cursor Example
DECLARE @PetName VARCHAR(50), @Status VARCHAR(20);

DECLARE pet_cursor CURSOR FOR
SELECT name, status FROM Pets WHERE status <> 'Available';

OPEN pet_cursor;

FETCH NEXT FROM pet_cursor INTO @PetName, @Status;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Pet "' + @PetName + '" is currently ' + @Status;
    FETCH NEXT FROM pet_cursor INTO @PetName, @Status;
END;

CLOSE pet_cursor;
DEALLOCATE pet_cursor;



