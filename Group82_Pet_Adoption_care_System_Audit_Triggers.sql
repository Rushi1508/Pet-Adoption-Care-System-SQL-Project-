/*
    Project Title: Pet Adoption & Care System
    Group Number: 82
    Group Members: Rushi Vasantkumar Parikh, Mitali Kamal Bagadia
    Course: IFT 530 - Arizona State University
    Description: SQL Script to audit tables and create triggers for Pet Adoption & Care System.
    Date: 05/02/2025
*/

-- Drop existing triggers and audit table if they exist
DROP TRIGGER IF EXISTS trg_pettypes_insert;
DROP TRIGGER IF EXISTS trg_pettypes_update;
DROP TRIGGER IF EXISTS trg_pettypes_delete;
GO

DROP TABLE IF EXISTS PetTypes_Audit;
GO

-- Create Audit Table
CREATE TABLE PetTypes_Audit (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    pet_type_id INT,
    type_name VARCHAR(50),
    operation_type VARCHAR(10),
    audit_datetime DATETIME
);
GO

-- INSERT Trigger
CREATE TRIGGER trg_pettypes_insert
ON PetTypes
AFTER INSERT
AS
BEGIN
    INSERT INTO PetTypes_Audit (pet_type_id, type_name, operation_type, audit_datetime)
    SELECT pet_type_id, type_name, 'INSERT', GETDATE()
    FROM inserted;
END;
GO

-- UPDATE Trigger
CREATE TRIGGER trg_pettypes_update
ON PetTypes
AFTER UPDATE
AS
BEGIN
    INSERT INTO PetTypes_Audit (pet_type_id, type_name, operation_type, audit_datetime)
    SELECT pet_type_id, type_name, 'UPDATE', GETDATE()
    FROM inserted;
END;
GO

-- DELETE Trigger
CREATE TRIGGER trg_pettypes_delete
ON PetTypes
AFTER DELETE
AS
BEGIN
    INSERT INTO PetTypes_Audit (pet_type_id, type_name, operation_type, audit_datetime)
    SELECT pet_type_id, type_name, 'DELETE', GETDATE()
    FROM deleted;
END;
GO

-- INSERT Test
INSERT INTO PetTypes (type_name) VALUES ('Iguana');

-- UPDATE Test
UPDATE PetTypes SET type_name = 'Lizard' WHERE type_name = 'Iguana';

-- DELETE Test
DELETE FROM PetTypes WHERE type_name = 'Lizard';

-- Check the audit log
SELECT * FROM PetTypes_Audit;
