USE Group82_Pet_Adoption_Care_System;
GO

-- Step 1: Populate PetTypes (dimension table)
IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Dog')
    INSERT INTO PetTypes (type_name) VALUES ('Dog');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Cat')
    INSERT INTO PetTypes (type_name) VALUES ('Cat');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Rabbit')
    INSERT INTO PetTypes (type_name) VALUES ('Rabbit');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Hamster')
    INSERT INTO PetTypes (type_name) VALUES ('Hamster');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Parrot')
    INSERT INTO PetTypes (type_name) VALUES ('Parrot');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Turtle')
    INSERT INTO PetTypes (type_name) VALUES ('Turtle');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Guinea Pig')
    INSERT INTO PetTypes (type_name) VALUES ('Guinea Pig');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Ferret')
    INSERT INTO PetTypes (type_name) VALUES ('Ferret');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Fish')
    INSERT INTO PetTypes (type_name) VALUES ('Fish');

IF NOT EXISTS (SELECT 1 FROM PetTypes WHERE type_name = 'Snake')
    INSERT INTO PetTypes (type_name) VALUES ('Snake');

SELECT * FROM PetTypes;

-- Step 2: Populate Staff (dimension table)

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Dr. Emily Wong')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Dr. Emily Wong', 'Vet', '555-0001');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Jake Turner')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Jake Turner', 'Caretaker', '555-0002');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Lisa Ray')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Lisa Ray', 'Vet', '555-0003');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Kevin Hart')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Kevin Hart', 'Caretaker', '555-0004');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Sophie Lin')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Sophie Lin', 'Vet', '555-0005');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Tom Hill')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Tom Hill', 'Caretaker', '555-0006');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Nancy Drew')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Nancy Drew', 'Vet', '555-0007');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Mason Cole')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Mason Cole', 'Caretaker', '555-0008');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Rachel Green')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Rachel Green', 'Vet', '555-0009');

IF NOT EXISTS (SELECT 1 FROM Staff WHERE full_name = 'Leo Grant')
    INSERT INTO Staff (full_name, role, contact_number) VALUES ('Leo Grant', 'Caretaker', '555-0010');

SELECT * FROM Staff;
-- Step 3: Populate Adopters (dimension table)

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Alice Johnson')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Alice Johnson', 'alice@example.com', '555-1001', '123 Maple Street');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Bob Smith')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Bob Smith', 'bob@example.com', '555-1002', '456 Oak Avenue');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Clara Davis')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Clara Davis', 'clara@example.com', '555-1003', '789 Pine Road');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Daniel Kim')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Daniel Kim', 'daniel@example.com', '555-1004', '321 Cedar Lane');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Eva Patel')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Eva Patel', 'eva@example.com', '555-1005', '654 Birch Drive');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Frank Yang')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Frank Yang', 'frank@example.com', '555-1006', '101 Spruce Blvd');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Grace Lee')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Grace Lee', 'grace@example.com', '555-1007', '22 Willow Way');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Henry Turner')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Henry Turner', 'henry@example.com', '555-1008', '98 Elm Court');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Isla Rivera')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Isla Rivera', 'isla@example.com', '555-1009', '17 Palm Street');

IF NOT EXISTS (SELECT 1 FROM Adopters WHERE full_name = 'Jack Morris')
    INSERT INTO Adopters (full_name, email, phone, address)
    VALUES ('Jack Morris', 'jack@example.com', '555-1010', '88 Chestnut Circle');

SELECT * FROM Adopters;
	   
-- Step 4: Populate Pets (real names + pet types)

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Luna')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Luna', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 3, 'Female', '2024-10-02', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Max')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Max', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 4, 'Male', '2024-10-03', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Bella')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Bella', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 5, 'Female', '2024-10-04', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Charlie')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Charlie', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 6, 'Male', '2024-10-05', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Daisy')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Daisy', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 7, 'Female', '2024-10-06', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Rocky')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Rocky', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Cat'), 'Persian', 2, 'Male', '2024-09-15', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Coco')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Coco', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Cat'), 'Siamese', 3, 'Female', '2024-09-18', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Buddy')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Buddy', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Rabbit'), 'Dwarf', 1, 'Male', '2024-08-10', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Nala')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Nala', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Rabbit'), 'Lop', 2, 'Female', '2024-08-12', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Simba')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Simba', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Hamster'), 'Syrian', 1, 'Male', '2024-07-25', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Peanut')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Peanut', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Parrot'), 'African Grey', 6, 'Female', '2024-06-10', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Milo')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Milo', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Parrot'), 'Macaw', 5, 'Male', '2024-06-15', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Ginger')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Ginger', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Turtle'), 'Red-Eared Slider', 10, 'Male', '2024-05-20', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Toby')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Toby', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Guinea Pig'), 'Abyssinian', 2, 'Female', '2024-04-11', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Oreo')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Oreo', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Ferret'), 'Albino', 3, 'Male', '2024-03-10', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Olive')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Olive', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Fish'), 'Goldfish', 1, 'Female', '2024-02-20', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Maple')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Maple', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Snake'), 'Corn Snake', 4, 'Male', '2024-01-15', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Mocha')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Mocha', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Snake'), 'Ball Python', 5, 'Female', '2024-01-25', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Shadow')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Shadow', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Hamster'), 'Roborovski', 1, 'Female', '2024-12-01', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Poppy')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Poppy', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Guinea Pig'), 'American', 3, 'Male', '2024-11-12', 'Available');

-- Feel free to continue for: Rocky, Coco, Buddy, Nala, Simba, Peanut, etc.
SELECT * FROM Pets;


-- Adoptions with real pet and adopter names using TOP 1
-- Step 5: Populate Adoptions (real pets + adopters)

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Alice Johnson'),
        '2025-01-02', 51);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Bob Smith'),
        '2025-01-03', 52);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Clara Davis'),
        '2025-01-04', 53);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Daniel Kim'),
        '2025-01-05', 54);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Eva Patel'),
        '2025-01-06', 55);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Frank Yang'),
        '2025-01-07', 56);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Grace Lee'),
        '2025-01-08', 57);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Henry Turner'),
        '2025-01-09', 58);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Isla Rivera'),
        '2025-01-10', 59);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Jack Morris'),
        '2025-01-11', 60);

-- (Repeat for Peanut, Milo, Ginger, Toby, Oreo, Olive, Maple, Mocha, Shadow, Poppy using same pattern)
-- Continued: Adoptions 11–20

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Alice Johnson'),
        '2025-01-12', 61);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Bob Smith'),
        '2025-01-13', 62);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Clara Davis'),
        '2025-01-14', 63);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Daniel Kim'),
        '2025-01-15', 64);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Eva Patel'),
        '2025-01-16', 65);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Frank Yang'),
        '2025-01-17', 66);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Grace Lee'),
        '2025-01-18', 67);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Henry Turner'),
        '2025-01-19', 68);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Isla Rivera'),
        '2025-01-20', 69);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Jack Morris'),
        '2025-01-21', 70);

SELECT * FROM Adoptions;
-- Step 6: Populate Vaccinations (20 rows total)

-- 1–10: Rabies vaccine
IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna') AND vaccine_name = 'Rabies' AND date_given = '2024-11-02')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna'), 'Rabies', '2024-11-02', '2025-11-02');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max') AND vaccine_name = 'Rabies' AND date_given = '2024-11-03')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max'), 'Rabies', '2024-11-03', '2025-11-03');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella') AND vaccine_name = 'Rabies' AND date_given = '2024-11-04')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella'), 'Rabies', '2024-11-04', '2025-11-04');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie') AND vaccine_name = 'Rabies' AND date_given = '2024-11-05')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie'), 'Rabies', '2024-11-05', '2025-11-05');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy') AND vaccine_name = 'Rabies' AND date_given = '2024-11-06')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy'), 'Rabies', '2024-11-06', '2025-11-06');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky') AND vaccine_name = 'Rabies' AND date_given = '2024-11-07')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky'), 'Rabies', '2024-11-07', '2025-11-07');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco') AND vaccine_name = 'Rabies' AND date_given = '2024-11-08')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco'), 'Rabies', '2024-11-08', '2025-11-08');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy') AND vaccine_name = 'Rabies' AND date_given = '2024-11-09')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy'), 'Rabies', '2024-11-09', '2025-11-09');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala') AND vaccine_name = 'Rabies' AND date_given = '2024-11-10')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala'), 'Rabies', '2024-11-10', '2025-11-10');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba') AND vaccine_name = 'Rabies' AND date_given = '2024-11-11')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba'), 'Rabies', '2024-11-11', '2025-11-11');

-- 11–20: Distemper and Parvo vaccines

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut') AND vaccine_name = 'Distemper' AND date_given = '2024-11-12')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut'), 'Distemper', '2024-11-12', '2025-11-12');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo') AND vaccine_name = 'Distemper' AND date_given = '2024-11-13')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo'), 'Distemper', '2024-11-13', '2025-11-13');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger') AND vaccine_name = 'Distemper' AND date_given = '2024-11-14')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger'), 'Distemper', '2024-11-14', '2025-11-14');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby') AND vaccine_name = 'Parvo' AND date_given = '2024-11-15')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby'), 'Parvo', '2024-11-15', '2025-11-15');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo') AND vaccine_name = 'Parvo' AND date_given = '2024-11-16')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo'), 'Parvo', '2024-11-16', '2025-11-16');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive') AND vaccine_name = 'Parvo' AND date_given = '2024-11-17')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive'), 'Parvo', '2024-11-17', '2025-11-17');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple') AND vaccine_name = 'Parvo' AND date_given = '2024-11-18')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple'), 'Parvo', '2024-11-18', '2025-11-18');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha') AND vaccine_name = 'Parvo' AND date_given = '2024-11-19')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha'), 'Parvo', '2024-11-19', '2025-11-19');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow') AND vaccine_name = 'Parvo' AND date_given = '2024-11-20')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow'), 'Parvo', '2024-11-20', '2025-11-20');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy') AND vaccine_name = 'Parvo' AND date_given = '2024-11-21')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy'), 'Parvo', '2024-11-21', '2025-11-21');

SELECT * FROM Vaccinations;
-- Step 7: Populate CareLogs (20 entries)

-- 1–10
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna') AND care_date = '2025-04-01')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Jake Turner'),
        '2025-04-01', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max') AND care_date = '2025-04-02')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Lisa Ray'),
        '2025-04-02', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella') AND care_date = '2025-04-03')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Tom Hill'),
        '2025-04-03', 'Medication');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie') AND care_date = '2025-04-04')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Sophie Lin'),
        '2025-04-04', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy') AND care_date = '2025-04-05')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Kevin Hart'),
        '2025-04-05', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky') AND care_date = '2025-04-06')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Nancy Drew'),
        '2025-04-06', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco') AND care_date = '2025-04-07')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Mason Cole'),
        '2025-04-07', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy') AND care_date = '2025-04-08')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Dr. Emily Wong'),
        '2025-04-08', 'Medication');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala') AND care_date = '2025-04-09')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Leo Grant'),
        '2025-04-09', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba') AND care_date = '2025-04-10')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Rachel Green'),
        '2025-04-10', 'Cleaning');

-- 11–20
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut') AND care_date = '2025-04-11')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Jake Turner'),
        '2025-04-11', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo') AND care_date = '2025-04-12')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Lisa Ray'),
        '2025-04-12', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger') AND care_date = '2025-04-13')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Tom Hill'),
        '2025-04-13', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby') AND care_date = '2025-04-14')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Sophie Lin'),
        '2025-04-14', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo') AND care_date = '2025-04-15')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Kevin Hart'),
        '2025-04-15', 'Medication');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive') AND care_date = '2025-04-16')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Nancy Drew'),
        '2025-04-16', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple') AND care_date = '2025-04-17')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Mason Cole'),
        '2025-04-17', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha') AND care_date = '2025-04-18')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Dr. Emily Wong'),
        '2025-04-18', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow') AND care_date = '2025-04-19')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Leo Grant'),
        '2025-04-19', 'Cleaning');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy') AND care_date = '2025-04-20')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Rachel Green'),
        '2025-04-20', 'Feeding');

SELECT * FROM CareLogs;
-- Step 8: Populate VetVisits (20 entries with diagnosis)

-- 1–10
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna') AND visit_date = '2025-03-01')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Luna'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Dr. Emily Wong'),
        '2025-03-01', 'General Check-up');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max') AND visit_date = '2025-03-02')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Max'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Lisa Ray'),
        '2025-03-02', 'Fever');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella') AND visit_date = '2025-03-03')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Bella'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Sophie Lin'),
        '2025-03-03', 'Allergy');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie') AND visit_date = '2025-03-04')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Charlie'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Nancy Drew'),
        '2025-03-04', 'Injury');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy') AND visit_date = '2025-03-05')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Daisy'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Rachel Green'),
        '2025-03-05', 'Dental Cleaning');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky') AND visit_date = '2025-03-06')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Rocky'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Dr. Emily Wong'),
        '2025-03-06', 'Fever');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco') AND visit_date = '2025-03-07')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Coco'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Lisa Ray'),
        '2025-03-07', 'Allergy');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy') AND visit_date = '2025-03-08')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Buddy'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Sophie Lin'),
        '2025-03-08', 'Injury');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala') AND visit_date = '2025-03-09')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Nala'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Nancy Drew'),
        '2025-03-09', 'Dental Cleaning');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba') AND visit_date = '2025-03-10')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Simba'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Rachel Green'),
        '2025-03-10', 'Check-up');

-- 11–20
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut') AND visit_date = '2025-03-11')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Peanut'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Dr. Emily Wong'),
        '2025-03-11', 'Fever');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo') AND visit_date = '2025-03-12')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Milo'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Lisa Ray'),
        '2025-03-12', 'Skin Infection');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger') AND visit_date = '2025-03-13')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Ginger'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Sophie Lin'),
        '2025-03-13', 'Dental Cleaning');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby') AND visit_date = '2025-03-14')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Toby'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Nancy Drew'),
        '2025-03-14', 'Allergy');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo') AND visit_date = '2025-03-15')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Oreo'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Rachel Green'),
        '2025-03-15', 'Ear Infection');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive') AND visit_date = '2025-03-16')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Olive'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Dr. Emily Wong'),
        '2025-03-16', 'Check-up');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple') AND visit_date = '2025-03-17')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Maple'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Lisa Ray'),
        '2025-03-17', 'Vaccination');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha') AND visit_date = '2025-03-18')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Mocha'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Sophie Lin'),
        '2025-03-18', 'Skin Infection');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow') AND visit_date = '2025-03-19')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Shadow'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Nancy Drew'),
        '2025-03-19', 'Injury');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy') AND visit_date = '2025-03-20')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Poppy'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Rachel Green'),
        '2025-03-20', 'General Check-up');

SELECT * FROM VetVisits;
