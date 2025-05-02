
# 🐾 Pet Adoption & Care System (SQL Project)

This project implements a full-featured **Pet Adoption & Care System** using SQL Server. Designed as part of the IFT 530 course final project, it demonstrates robust database design, constraint-safe data population, views, stored procedures, triggers, and more.

## 📦 Features

- ✅ **Normalized Schema** with 8+ interrelated tables
- 🔐 **Foreign Key Safe Inserts** using `IF NOT EXISTS` + `TOP 1`
- 📈 **ERD Diagram** (included separately)
- 👨‍⚕️ Audit tracking via `AFTER TRIGGER` on the `PetTypes` table
- 📊 Dynamic `Views`, `Stored Procedure`, and `UDF`
- 🔄 500+ lines of structured insert statements
- 🔁 Cursor implementation for iterating over pet records
- 💾 Tested and optimized for SQL Server

## 🧱 Table Summary

| Table Name     | Type          | Purpose                            |
|----------------|---------------|------------------------------------|
| PetTypes       | Dimension     | Lookup for animal types            |
| Staff          | Dimension     | Staff roles like Vet, Caretaker    |
| Adopters       | Dimension     | Registered adopters                |
| Pets           | Dimension     | Registered pets                    |
| Adoptions      | Transactional | Records of pet adoptions           |
| Vaccinations   | Transactional | Medical vaccine history            |
| CareLogs       | Transactional | Daily care logs                    |
| VetVisits      | Transactional | Vet diagnosis and visits           |

## 📂 Files Included

- `Pet_Adoption_care_System_Database_Schema.sql` – Creates all tables with constraints
- `Pet_Adoption_care_System_Populate_Tables.sql` – Populates all tables with realistic, FK-safe data
- `Pet_Adoption_care_System.sql` – Main script with views, triggers, procedures, and more
- `ERD.png` – Entity Relationship Diagram (optional visual)
- `README.md` – This file

## ⚙️ Run Instructions

1. Open SQL Server Management Studio (SSMS)
2. Execute `Pet_Adoption_care_System_Database_Schema.sql` to create tables
3. Run `Pet_Adoption_care_System_Populate_Tables.sql` to insert sample data
4. Execute `Pet_Adoption_care_System.sql` to create views, procedures, triggers, and test logic

## 📝 Author

- Rushi V. Parikh with co-author Mitali
- Arizona State University – Tempe, AZ
- Course: IFT 530 – Database Systems

---

> Designed to be modular, re-runnable, and evaluation-ready 🚀
