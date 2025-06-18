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

![ER Diagram](https://github.com/user-attachments/assets/90747d3f-767b-43ee-9f08-1165563d66fa)

### 🧾 SQL Table Examples

![Volunteer Table Screenshot](https://github.com/user-attachments/assets/179b80d4-d7c6-4e13-81f7-2eda929ae97d)


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

## 🔎 Sample SQL Queries

- Top 10 donors for a campaign
![Image](https://github.com/user-attachments/assets/fddd6bcf-99da-42cc-9a09-769712c347d2)

- Campaigns still accepting donations
![Image](https://github.com/user-attachments/assets/01f4be7d-4879-4991-bc41-93d52336d6f4)

- Donors who contributed to multiple campaigns
![Image](https://github.com/user-attachments/assets/9e0902a5-fa89-4ce6-bc84-4fa82965ea85)

- Average donation amount per donor
![Image](https://github.com/user-attachments/assets/6b771b8a-2c6e-487a-a2a7-58c995d780ad)

- Top 3 highest-funded campaigns with volunteer/donor counts
![Image](https://github.com/user-attachments/assets/7d005dfb-2a8b-4f5a-bd36-da758a55d0d1)



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
