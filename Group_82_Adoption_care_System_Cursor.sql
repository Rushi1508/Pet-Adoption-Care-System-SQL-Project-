/*
    Project Title: Pet Adoption & Care System
    Group Number: 82
    Group Members: Rushi Vasantkumar Parikh, Mitali Kamal Bagadia
    Course: IFT 530 - Arizona State University
    Description: SQL Script to create cursors for Pet Adoption & Care System.
    Date: 05/02/2025
*/

USE Group82_Pet_Adoption_Care_System;
GO

-- Declare variables
DECLARE @petName VARCHAR(50), @status VARCHAR(20);

-- Declare cursor
DECLARE pet_cursor CURSOR FOR
SELECT name, status
FROM Pets;

-- Open cursor
OPEN pet_cursor;

-- Fetch the first row
FETCH NEXT FROM pet_cursor INTO @petName, @status;

-- Loop through all rows
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Pet: ' + @petName + ' | Status: ' + @status;
    
    -- Fetch next row
    FETCH NEXT FROM pet_cursor INTO @petName, @status;
END;

-- Close and deallocate cursor
CLOSE pet_cursor;
DEALLOCATE pet_cursor;
