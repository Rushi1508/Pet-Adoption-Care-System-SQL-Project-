-- Pets with dynamic FK using TOP 1

-- Existing 5 dogs (already added)
IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet1')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet1', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 3, 'Female', '2024-10-02', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet2')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet2', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 4, 'Male', '2024-10-03', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet3')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet3', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 5, 'Female', '2024-10-04', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet4')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet4', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 6, 'Male', '2024-10-05', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet5')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet5', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Dog'), 'Labrador', 7, 'Female', '2024-10-06', 'Adopted');

-- Additional 15 pets (max 2 per type)
IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet6')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet6', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Cat'), 'Persian', 2, 'Male', '2024-09-15', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet7')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet7', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Cat'), 'Siamese', 3, 'Female', '2024-09-18', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet8')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet8', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Rabbit'), 'Dwarf', 1, 'Male', '2024-08-10', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet9')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet9', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Rabbit'), 'Lop', 2, 'Female', '2024-08-12', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet10')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet10', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Hamster'), 'Syrian', 1, 'Male', '2024-07-25', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet11')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet11', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Parrot'), 'African Grey', 6, 'Female', '2024-06-10', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet12')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet12', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Parrot'), 'Macaw', 5, 'Male', '2024-06-15', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet13')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet13', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Turtle'), 'Red-Eared Slider', 10, 'Male', '2024-05-20', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet14')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet14', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Guinea Pig'), 'Abyssinian', 2, 'Female', '2024-04-11', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet15')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet15', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Ferret'), 'Albino', 3, 'Male', '2024-03-10', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet16')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet16', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Fish'), 'Goldfish', 1, 'Female', '2024-02-20', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet17')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet17', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Snake'), 'Corn Snake', 4, 'Male', '2024-01-15', 'Available');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet18')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet18', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Snake'), 'Ball Python', 5, 'Female', '2024-01-25', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet19')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet19', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Hamster'), 'Roborovski', 1, 'Female', '2024-12-01', 'Adopted');

IF NOT EXISTS (SELECT 1 FROM Pets WHERE name = 'Pet20')
INSERT INTO Pets (name, pet_type_id, breed, age, gender, intake_date, status)
VALUES ('Pet20', (SELECT TOP 1 pet_type_id FROM PetTypes WHERE type_name = 'Guinea Pig'), 'American', 3, 'Male', '2024-11-12', 'Available');



-- Adoptions with dynamic FK using TOP 1
IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 1'),
        '2025-01-02', 51);
IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 2'),
        '2025-01-03', 52);
IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 3'),
        '2025-01-04', 53);
IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 4'),
        '2025-01-05', 54);
IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 5'),
        '2025-01-06', 55);
-- Extended Adoptions with dynamic FK using TOP 1
IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 6'),
        '2025-01-07', 56);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 7'),
        '2025-01-08', 57);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 8'),
        '2025-01-09', 58);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 9'),
        '2025-01-10', 59);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 10'),
        '2025-01-11', 60);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 1'),
        '2025-01-12', 61);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 2'),
        '2025-01-13', 62);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 3'),
        '2025-01-14', 63);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 4'),
        '2025-01-15', 64);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 5'),
        '2025-01-16', 65);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 6'),
        '2025-01-17', 66);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 7'),
        '2025-01-18', 67);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 8'),
        '2025-01-19', 68);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 9'),
        '2025-01-20', 69);

IF NOT EXISTS (SELECT 1 FROM Adoptions WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20'))
INSERT INTO Adoptions (pet_id, adopter_id, adoption_date, fee_paid)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20'),
        (SELECT TOP 1 adopter_id FROM Adopters WHERE full_name = 'Adopter 10'),
        '2025-01-21', 70);

-- Vaccinations with dynamic FK using TOP 1
IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1') AND vaccine_name = 'Rabies' AND date_given = '2024-11-02')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1'), 'Rabies', '2024-11-02', '2025-11-02');
IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2') AND vaccine_name = 'Rabies' AND date_given = '2024-11-03')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2'), 'Rabies', '2024-11-03', '2025-11-03');
IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3') AND vaccine_name = 'Rabies' AND date_given = '2024-11-04')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3'), 'Rabies', '2024-11-04', '2025-11-04');
IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4') AND vaccine_name = 'Rabies' AND date_given = '2024-11-05')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4'), 'Rabies', '2024-11-05', '2025-11-05');
IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5') AND vaccine_name = 'Rabies' AND date_given = '2024-11-06')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5'), 'Rabies', '2024-11-06', '2025-11-06');
-- Extended Vaccinations with dynamic FK using TOP 1

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6') AND vaccine_name = 'Distemper' AND date_given = '2024-11-07')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6'), 'Distemper', '2024-11-07', '2025-11-07');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7') AND vaccine_name = 'Parvo' AND date_given = '2024-11-08')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7'), 'Parvo', '2024-11-08', '2025-11-08');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8') AND vaccine_name = 'Rabies' AND date_given = '2024-11-09')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8'), 'Rabies', '2024-11-09', '2025-11-09');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9') AND vaccine_name = 'Parvo' AND date_given = '2024-11-10')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9'), 'Parvo', '2024-11-10', '2025-11-10');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10') AND vaccine_name = 'Distemper' AND date_given = '2024-11-11')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10'), 'Distemper', '2024-11-11', '2025-11-11');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11') AND vaccine_name = 'Rabies' AND date_given = '2024-11-12')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11'), 'Rabies', '2024-11-12', '2025-11-12');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12') AND vaccine_name = 'Parvo' AND date_given = '2024-11-13')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12'), 'Parvo', '2024-11-13', '2025-11-13');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13') AND vaccine_name = 'Distemper' AND date_given = '2024-11-14')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13'), 'Distemper', '2024-11-14', '2025-11-14');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14') AND vaccine_name = 'Rabies' AND date_given = '2024-11-15')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14'), 'Rabies', '2024-11-15', '2025-11-15');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15') AND vaccine_name = 'Parvo' AND date_given = '2024-11-16')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15'), 'Parvo', '2024-11-16', '2025-11-16');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16') AND vaccine_name = 'Distemper' AND date_given = '2024-11-17')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16'), 'Distemper', '2024-11-17', '2025-11-17');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17') AND vaccine_name = 'Rabies' AND date_given = '2024-11-18')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17'), 'Rabies', '2024-11-18', '2025-11-18');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18') AND vaccine_name = 'Parvo' AND date_given = '2024-11-19')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18'), 'Parvo', '2024-11-19', '2025-11-19');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19') AND vaccine_name = 'Distemper' AND date_given = '2024-11-20')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19'), 'Distemper', '2024-11-20', '2025-11-20');

IF NOT EXISTS (SELECT 1 FROM Vaccinations WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20') AND vaccine_name = 'Rabies' AND date_given = '2024-11-21')
INSERT INTO Vaccinations (pet_id, vaccine_name, date_given, next_due_date)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20'), 'Rabies', '2024-11-21', '2025-11-21');


-- CareLogs with dynamic FK using TOP 1
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1') AND care_date = '2025-04-02')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 1'),
        '2025-04-02', 'Feeding');
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2') AND care_date = '2025-04-03')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 2'),
        '2025-04-03', 'Feeding');
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3') AND care_date = '2025-04-04')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 3'),
        '2025-04-04', 'Feeding');
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4') AND care_date = '2025-04-05')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 4'),
        '2025-04-05', 'Feeding');
IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5') AND care_date = '2025-04-06')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 5'),
        '2025-04-06', 'Feeding');
		-- Extended CareLogs with dynamic FK using TOP 1

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6') AND care_date = '2025-04-07')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 6'),
        '2025-04-07', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7') AND care_date = '2025-04-08')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 7'),
        '2025-04-08', 'Medication');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8') AND care_date = '2025-04-09')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 8'),
        '2025-04-09', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9') AND care_date = '2025-04-10')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 9'),
        '2025-04-10', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10') AND care_date = '2025-04-11')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 10'),
        '2025-04-11', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11') AND care_date = '2025-04-12')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 1'),
        '2025-04-12', 'Medication');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12') AND care_date = '2025-04-13')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 2'),
        '2025-04-13', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13') AND care_date = '2025-04-14')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 3'),
        '2025-04-14', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14') AND care_date = '2025-04-15')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 4'),
        '2025-04-15', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15') AND care_date = '2025-04-16')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 5'),
        '2025-04-16', 'Bathing');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16') AND care_date = '2025-04-17')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 6'),
        '2025-04-17', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17') AND care_date = '2025-04-18')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 7'),
        '2025-04-18', 'Exercise');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18') AND care_date = '2025-04-19')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 8'),
        '2025-04-19', 'Medication');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19') AND care_date = '2025-04-20')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 9'),
        '2025-04-20', 'Feeding');

IF NOT EXISTS (SELECT 1 FROM CareLogs WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20') AND care_date = '2025-04-21')
INSERT INTO CareLogs (pet_id, staff_id, care_date, activity)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 10'),
        '2025-04-21', 'Cleaning');


-- VetVisits with dynamic FK using TOP 1
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1') AND visit_date = '2025-03-02')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet1'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 1'),
        '2025-03-02', 'Check-up');
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2') AND visit_date = '2025-03-03')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet2'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 2'),
        '2025-03-03', 'Check-up');
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3') AND visit_date = '2025-03-04')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet3'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 3'),
        '2025-03-04', 'Check-up');
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4') AND visit_date = '2025-03-05')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet4'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 4'),
        '2025-03-05', 'Check-up');
IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5') AND visit_date = '2025-03-06')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet5'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 5'),
        '2025-03-06', 'Check-up');
-- Extended VetVisits with dynamic FK using TOP 1

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6') AND visit_date = '2025-03-07')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet6'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 6'),
        '2025-03-07', 'Fever');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7') AND visit_date = '2025-03-08')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet7'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 7'),
        '2025-03-08', 'Injury');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8') AND visit_date = '2025-03-09')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet8'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 8'),
        '2025-03-09', 'Check-up');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9') AND visit_date = '2025-03-10')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet9'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 9'),
        '2025-03-10', 'Vaccination');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10') AND visit_date = '2025-03-11')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet10'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 10'),
        '2025-03-11', 'Dental check');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11') AND visit_date = '2025-03-12')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet11'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 1'),
        '2025-03-12', 'Check-up');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12') AND visit_date = '2025-03-13')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet12'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 2'),
        '2025-03-13', 'Ear infection');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13') AND visit_date = '2025-03-14')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet13'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 3'),
        '2025-03-14', 'Allergy');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14') AND visit_date = '2025-03-15')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet14'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 4'),
        '2025-03-15', 'Skin rash');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15') AND visit_date = '2025-03-16')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet15'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 5'),
        '2025-03-16', 'Fever');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16') AND visit_date = '2025-03-17')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet16'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 6'),
        '2025-03-17', 'Injury');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17') AND visit_date = '2025-03-18')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet17'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 7'),
        '2025-03-18', 'Dental check');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18') AND visit_date = '2025-03-19')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet18'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 8'),
        '2025-03-19', 'Check-up');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19') AND visit_date = '2025-03-20')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet19'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 9'),
        '2025-03-20', 'Fever');

IF NOT EXISTS (SELECT 1 FROM VetVisits WHERE pet_id = (SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20') AND visit_date = '2025-03-21')
INSERT INTO VetVisits (pet_id, staff_id, visit_date, diagnosis)
VALUES ((SELECT TOP 1 pet_id FROM Pets WHERE name = 'Pet20'),
        (SELECT TOP 1 staff_id FROM Staff WHERE full_name = 'Staff Member 10'),
        '2025-03-21', 'Skin infection');
