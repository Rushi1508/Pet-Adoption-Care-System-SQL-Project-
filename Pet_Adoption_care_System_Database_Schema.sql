/*
    Project Title: Pet Adoption & Care System
    Group Number: 82
    Group Members: Rushi Vasantkumar Parikh, Mitali Kamal Bagadia
    Course: IFT 530 - Arizona State University
    Description: SQL Script to create database and tables for Pet Adoption & Care System.
    Date: 04/27/2025
*/

-- Create Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Pet_Adoption_Care_System')
BEGIN
    CREATE DATABASE Pet_Adoption_Care_System;
END;
GO

-- Use the Database
USE Pet_Adoption_Care_System;
GO

-- Drop tables if exist (in reverse dependency order to avoid FK constraint errors)
IF OBJECT_ID('dbo.VetVisits', 'U') IS NOT NULL DROP TABLE dbo.VetVisits;
IF OBJECT_ID('dbo.CareLogs', 'U') IS NOT NULL DROP TABLE dbo.CareLogs;
IF OBJECT_ID('dbo.Vaccinations', 'U') IS NOT NULL DROP TABLE dbo.Vaccinations;
IF OBJECT_ID('dbo.Adoptions', 'U') IS NOT NULL DROP TABLE dbo.Adoptions;
IF OBJECT_ID('dbo.Pets', 'U') IS NOT NULL DROP TABLE dbo.Pets;
IF OBJECT_ID('dbo.Staff', 'U') IS NOT NULL DROP TABLE dbo.Staff;
IF OBJECT_ID('dbo.Adopters', 'U') IS NOT NULL DROP TABLE dbo.Adopters;
IF OBJECT_ID('dbo.PetTypes', 'U') IS NOT NULL DROP TABLE dbo.PetTypes;
GO

/****************************************************************************************************************
                               Table Creation
****************************************************************************************************************/

-- Create PetTypes Table
CREATE TABLE dbo.PetTypes (
    pet_type_id INT IDENTITY(1,1) PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE
);

-- Create Staff Table
CREATE TABLE dbo.Staff (
    staff_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL,
    contact_number VARCHAR(20) NULL
);

-- Create Pets Table
CREATE TABLE dbo.Pets (
    pet_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    pet_type_id INT NOT NULL,
    breed VARCHAR(50) NULL,
    age INT NULL CHECK (age >= 0),
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female')),
    intake_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'Available',
    FOREIGN KEY (pet_type_id) REFERENCES dbo.PetTypes(pet_type_id)
);

-- Create Adopters Table
CREATE TABLE dbo.Adopters (
    adopter_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20) NULL,
    address TEXT NULL
);

-- Create Adoptions Table
CREATE TABLE dbo.Adoptions (
    adoption_id INT IDENTITY(1,1) PRIMARY KEY,
    pet_id INT NOT NULL,
    adopter_id INT NOT NULL,
    adoption_date DATE NOT NULL,
    fee_paid DECIMAL(8,2) NOT NULL CHECK (fee_paid >= 0),
    FOREIGN KEY (pet_id) REFERENCES dbo.Pets(pet_id),
    FOREIGN KEY (adopter_id) REFERENCES dbo.Adopters(adopter_id)
);

-- Create Vaccinations Table
CREATE TABLE dbo.Vaccinations (
    vaccination_id INT IDENTITY(1,1) PRIMARY KEY,
    pet_id INT NOT NULL,
    vaccine_name VARCHAR(100) NOT NULL,
    date_given DATE NOT NULL,
    next_due_date DATE NULL,
    FOREIGN KEY (pet_id) REFERENCES dbo.Pets(pet_id)
);

-- Create CareLogs Table
CREATE TABLE dbo.CareLogs (
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    pet_id INT NOT NULL,
    staff_id INT NOT NULL,
    care_date DATE NOT NULL,
    activity VARCHAR(100) NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES dbo.Pets(pet_id),
    FOREIGN KEY (staff_id) REFERENCES dbo.Staff(staff_id)
);

-- Create VetVisits Table
CREATE TABLE dbo.VetVisits (
    visit_id INT IDENTITY(1,1) PRIMARY KEY,
    pet_id INT NOT NULL,
    staff_id INT NOT NULL,
    visit_date DATE NOT NULL,
    diagnosis TEXT NULL,
    FOREIGN KEY (pet_id) REFERENCES dbo.Pets(pet_id),
    FOREIGN KEY (staff_id) REFERENCES dbo.Staff(staff_id)
);
