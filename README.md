# e-Red: Blood Bank Management System

## 📌 Project Overview
**e-Red** is a desktop application designed to streamline blood bank operations — managing blood inventory, donor records, donation campaigns, and real-time blood availability across multiple blood banks.

---

## 🛠 Tech Stack
- **Language:** Python
- **UI Framework:** Tkinter
- **Database:** MySQL
- **Connector:** mysql-connector-python
- **Tool:** MySQL Workbench

---

## 🗄 Database Schema

### Tables:
```sql
ADMIN
- A_ID (PK)
- A_NAME
- A_PASSWORD

BLOOD_BANK
- B_ID (PK)
- B_NAME
- CITY
- PINCODE

DONATION_DETAILS
- B_ID (FK → BLOOD_BANK)
- BLOOD_TYPE
- QUANTITY

CAMPAIGN
- C_NAME
- C_DATE
- C_ORG_NAME
- C_LOC
- A_ID (FK → ADMIN)
```

### Relationships:
```
BLOOD_BANK → DONATION_DETAILS (one to many)
ADMIN → CAMPAIGN (one to many)
```

---

## ✨ Features

### Admin Portal:
- Secure login with credentials
- Update blood inventory (add/remove units)
- Create and manage donation campaigns
- Add new blood banks

### User Portal:
- Search blood availability by type and city
- View real-time inventory across blood banks
- Check upcoming donation campaigns

---

## ⚙️ Stored Procedures
- **Procedure 'A'** — Adds blood units to a blood bank with validation
- **Procedure 'REM'** — Removes blood units with insufficient stock check

---

## 🚀 Setup Instructions

### Prerequisites:
```
Python 3.x
MySQL Server
MySQL Workbench
```

### Installation:
```bash
# Install required library
pip install mysql-connector-python

# Clone the repository
git clone https://github.com/nibhaady/E-Red-Blood-Bank-Management.git

# Navigate to project
cd E-Red-Blood-Bank-Management
```

### Database Setup:
```sql
-- Create database
CREATE DATABASE bloodbank;

-- Use database
USE bloodbank;

-- Create tables (see schema above)
```

### Run the Application:
```bash
python PRACTICE.py
```

---

## 📊 Key SQL Queries

```sql
-- Check blood availability by type and city:
SELECT B_NAME, CITY, PINCODE
FROM BLOOD_BANK B, DONATION_DETAILS D
WHERE B.B_ID = D.B_ID
AND BLOOD_TYPE = 'A+ve'
AND CITY = 'MANGALORE'

-- Insert new campaign:
INSERT INTO CAMPAIGN(C_NAME, C_DATE, C_ORG_NAME, C_LOC, A_ID)
VALUES('Campaign Name', '2024-01-01', 'Org Name', 'Location', 'AdminID')
```

---

## 🔒 Security Note
This project was built for learning purposes. In a production environment, parameterized queries should be used instead of string concatenation to prevent SQL injection vulnerabilities.

---

## 📚 Learnings
- Relational database design and normalization
- MySQL stored procedures for business logic
- Python-MySQL integration using mysql-connector
- CRUD operations and transaction management
- Desktop UI development with Tkinter

---

## 👩‍💻 Author
Nibha Adyanthaya
- GitHub: [@nibhaady](https://github.com/nibhaady)
- Email: adyanthaya.n@northeastern.edu
