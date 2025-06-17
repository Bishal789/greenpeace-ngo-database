# 🌱 Greenpeace NGO Relational Database (MySQL)

This project presents a fully normalized relational database system designed for a fictional NGO — **Greenpeace** — to securely manage information about volunteers, donors, campaigns, environmental resources, and climate impacts. Built with MySQL, the database supports efficient data retrieval, query execution, and ethical data management practices.

---

## 📌 Project Overview

- **Purpose:** To build a secure and normalized database system for an NGO to manage campaigns, donor contributions, and volunteer engagement.
- **Scope:** Conceptual design, data modeling, SQL implementation, and data ethics/security analysis.
- **Tools Used:** MySQL, SQL (DDL & DML), ERD design, Azure tools (referenced)

---

## 🗂️ Key Features

- Normalized schema (1NF → 3NF)
- Entity Relationship Diagram (ERD)
- SQL table creation and data loading
- Advanced SQL queries for reporting and insights
- Data privacy, security, and ethical handling recommendations

---

## 🖼️ Visuals

### 📌 ER Diagram
> Upload your ER diagram as an image and replace the path below.

![ER Diagram](https://github.com/user-attachments/assets/90747d3f-767b-43ee-9f08-1165563d66fa)

### 🧾 SQL Table Examples
> You can include screenshots of table structures or outputs.

![Volunteer Table Screenshot](https://github.com/user-attachments/assets/179b80d4-d7c6-4e13-81f7-2eda929ae97d)

![Sample Query Output](https://github.com/user-attachments/assets/fddd6bcf-99da-42cc-9a09-769712c347d2)

---

## 📚 Database Entities

- **Volunteers**
- **Campaigns**
- **Donors**
- **Resources**
- **Impacts**
- **Volunteer_Campaign**
- **Donor_Campaign**
- **Campaign_Resource**
- **Impact_Resource**

---

## 🧱 Schema & Normalization

- **1NF:** Removed repeating groups (e.g., volunteer-campaigns)
- **2NF:** Eliminated partial dependencies on composite keys
- **3NF:** Removed transitive dependencies to ensure data integrity

> Each normalization step includes examples and explanations with supporting diagrams.

---

## 🔎 Sample SQL Queries

- Top 10 donors for a campaign
- Campaigns still accepting donations
- Donors who contributed to multiple campaigns
- Campaigns not meeting goals with few days left
- Average donation amount per donor
- Top 3 highest-funded campaigns with volunteer/donor counts

> All queries included as `.sql` script and screenshots in the report.

---

## 🔐 Security & Ethical Measures

- Role-Based Access Control (RBAC)
- Data encryption and backup strategies
- Ethical data handling and user consent
- Azure tools referenced:  
  - **Azure Active Directory**  
  - **Azure Key Vault**  
  - **Azure Security Center**

---

## 🚀 How to Run This Project

1. Install MySQL (local or cloud)
2. Import the provided `bidari.sql` file
3. Run sample queries from `queries.sql`
4. Review schema and ERD for data relationships

---

## 📄 Report

The full academic report explains:
- Conceptual design rationale
- Data normalization
- SQL implementation steps with screenshots
- Security and privacy policies for NGOs

---

## 🧑‍💻 Author

**Bishal Bidari**  
Student ID: S00391799  
Course: Modern Database Management  
Semester 2, 2024

---

## 🏷️ Tags

`mysql` `sql` `database-design` `data-normalization` `ngo` `data-ethics` `azure-security` `relational-database` `student-project`
