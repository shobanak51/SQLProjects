# ☁️ CloudyData SQL Project – Employees & Managers Analysis

This SQL project demonstrates how to manage and analyze employee and manager data across departments using basic and intermediate SQL operations like `UNION`, `INTERSECT`, `GROUP BY`, and aggregate functions.

It uses two core tables: `employees` and `managers`, and showcases a variety of practical queries designed to explore data relationships, compute department-level metrics, and combine datasets.

---

## 🎯 Project Objective

- Practice SQL set operations (`UNION`, `UNION ALL`, `INTERSECT`)
- Calculate departmental salary stats using `GROUP BY` and `SUM` / `AVG`
- Merge employee and manager data for unified analysis
- Understand data overlaps and differences across tables

---

## 🧱 Database Schema

### 🗃️ Database: `cloudydata`

#### 🔹 Table: `employees`
| Column         | Data Type       | Description               |
|----------------|------------------|---------------------------|
| emp_id         | INT (PK)         | Employee ID               |
| emp_name       | VARCHAR(100)     | Employee name             |
| emp_department | VARCHAR(50)      | Department name           |
| emp_salary     | DECIMAL(10,2)    | Employee salary           |

#### 🔹 Table: `managers`
| Column         | Data Type       | Description               |
|----------------|------------------|---------------------------|
| mgr_id         | INT (PK)         | Manager ID                |
| mgr_name       | VARCHAR(100)     | Manager name              |
| mgr_department | VARCHAR(50)      | Department name           |
| mgr_salary     | DECIMAL(10,2)    | Manager salary            |

---

## 🧪 Sample Data

Includes 7 employees and 5 managers across various departments such as HR, IT, Finance, Marketing, and Sales. Both tables share department and salary structure, allowing for union-based analysis.

---

## 📌 Key Queries

| Query # | Description |
|--------:|-------------|
| Q1 | Retrieve all **unique names** from employees and managers |
| Q2 | Return names and departments where salary > 70,000 |
| Q3 | Compute **total salary by department** from both tables |
| Q4 | Find **common names** in both employee and manager tables |
| Q5 | Calculate **average salary** by department (both tables) |
| Q6 | Retrieve **all records** from both tables (including duplicates) |

---

## 🚀 How to Run

1. Run the schema and data file in your SQL environment:
   ```sql
   CREATE DATABASE cloudydata;
   USE cloudydata;
   -- Then execute the full script with table creation, inserts, and queries.
2. Explore each query and observe the results.

3. Try modifying or expanding with additional filters, joins, or departments.

🧰 Tools Recommended
SQL engine: MySQL (or compatible RDBMS)

SQL editor: MySQL Workbench, DBeaver, DataGrip, etc.

👤 Author
Shobana Senthilkumar
This project is part of my practical SQL learning series and focuses on multi-table analysis using set operations and aggregate functions.

📄 License
Open for learning and non-commercial use. Feel free to fork, modify, and experiment.




