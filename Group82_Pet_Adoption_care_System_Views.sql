/*
    Project Title: Pet Adoption & Care System
    Group Number: 82
    Group Members: Rushi Vasantkumar Parikh, Mitali Kamal Bagadia
    Course: IFT 530 - Arizona State University
    Description: SQL Script to create views for Pet Adoption & Care System.
    Date: 05/02/2025
*/


-- View: vw_pet_adoption_summary
-- This view provides a comprehensive summary of adopted pets including their names, types, adopter details, adoption dates, and fees paid. 
-- It joins the Pets, PetTypes, Adoptions, and Adopters tables to consolidate relevant information. 
-- The view is filtered to only include pets whose status is marked as 'Adopted', making it ideal for reporting and administrative analysis of successful adoptions.

DROP VIEW IF EXISTS vw_pet_adoption_summary;
GO
CREATE VIEW vw_pet_adoption_summary AS
SELECT 
    p.pet_id,
    p.Name AS pet_name,
    pt.type_name,
    a.full_name AS adopter_name,
    ad.adoption_date,
    ad.fee_paid
FROM Pets p
JOIN PetTypes pt ON p.pet_type_id = pt.pet_type_id
JOIN Adoptions ad ON p.pet_id = ad.pet_id
JOIN Adopters a ON ad.adopter_id = a.adopter_id
WHERE p.Status = 'Adopted';
GO


-- View: vw_upcoming_vaccinations
-- This view lists all pets that have upcoming or due vaccinations. 
-- By joining the Vaccinations and Pets tables, it displays each pet’s name alongside the vaccine name and next due date. 
-- The WHERE clause ensures that only future or current vaccinations are shown, making it useful for caretakers to schedule timely medical follow-ups.

DROP VIEW IF EXISTS vw_upcoming_vaccinations;
GO
CREATE VIEW vw_upcoming_vaccinations AS
SELECT 
    v.vaccination_id,
    p.Name AS pet_name,
    v.vaccine_name,
    v.next_due_date
FROM Vaccinations v
JOIN Pets p ON v.pet_id = p.pet_id
WHERE v.next_due_date >= CAST(GETDATE() AS DATE);
GO

-- View: vw_vet_visit_summary
-- This view provides a summary of all vet visits for each pet, including the pet's name, vet's name, visit date, and diagnosis notes.
-- It joins the VetVisits, Pets, and Staff tables to give a clear picture of medical history per pet.
-- This view helps veterinary staff and administrators review health issues and follow-up needs.

DROP VIEW IF EXISTS vw_vet_visit_summary;
GO

CREATE VIEW vw_vet_visit_summary AS
SELECT
    vv.visit_id,
    p.Name AS pet_name,
    s.full_name AS vet_name,
    vv.visit_date,
    vv.Diagnosis
FROM VetVisits vv
JOIN Pets p ON vv.pet_id = p.pet_id
JOIN Staff s ON vv.staff_id = s.staff_id
WHERE vv.Diagnosis IS NOT NULL;
GO


SELECT * FROM vw_pet_adoption_summary;
SELECT * FROM vw_upcoming_vaccinations;
SELECT * FROM vw_vet_visit_summary;
