# 🧾 SQL Project – Sales Data Analysis Using CASE WHEN

This project demonstrates the use of the `CASE WHEN` statement in SQL to analyze and classify sales data. It involves conditional logic to categorize sales records by price range, sales period, discount eligibility, and other useful business indicators.

---

## 🎯 Project Objective

- Apply `CASE WHEN` logic for classifying and segmenting sales data
- Identify trends based on price, time period, and quantity
- Demonstrate dynamic reporting using SQL conditions

---

## 🧱 Database Schema

### 🗃️ Database: `cloudydata`

#### 🔹 Table: `sales`

| Column       | Data Type       | Description                     |
|--------------|------------------|---------------------------------|
| sales_id     | INT              | Unique ID for the sale          |
| product_name | VARCHAR(50)      | Name of the product             |
| category     | VARCHAR(50)      | Product category (e.g., Electronics) |
| sales_date   | DATE             | Date the sale occurred          |
| quantity     | INT              | Quantity sold                   |
| price        | DECIMAL(10, 2)   | Price per unit                  |

---

## 🧪 Sample Data Overview

10 sample records across 3 categories:
- **Electronics**: Laptop, Smartphone, TV, etc.
- **Furniture**: Desk Chair, Office Desk, Sofa
- **Appliances**: Microwave, Coffee Maker, Blender

Sales range from January to June 2024.

---

## 📌 Key SQL Queries

| Query | Description |
|-------|-------------|
| Q1 | Categorize sales as 'High', 'Medium', or 'Low' based on price |
| Q2 | Label sales as 'First Half' or 'Second Half' of the year |
| Q3 | Assign discounts: 10% for Electronics, 5% for Furniture, 3% for Appliances |
| Q4 | Label sales as 'Recent' (last 3 months) or 'Old' |
| Q5 | Determine the Quarter (Q1–Q4) each sale occurred in |
| Q6 | Group sales by halves using MONTH function |
| Q7 | Mark sales as 'Completed' or 'Pending' based on quantity sold |

---


## 🛠️ How to Use This Project

1. **Create the Database & Table**
   ```sql
   CREATE DATABASE cloudydata;
   USE cloudydata;
2. Run the provided SQL script to create the sales table and insert sample records.

3. Execute the CASE WHEN queries to explore sales data patterns.


🧰 Tools Required
SQL engine (MySQL recommended)

SQL editor (MySQL Workbench, DBeaver, SQL Developer, etc.)

Basic SQL knowledge


📚 Concepts Covered
CASE WHEN logic

MONTH() and DATE functions

Conditional labels and classification

Working with date ranges (CURRENT_DATE - INTERVAL)

Data segmentation using custom logic


👩‍💻 Author
Shobana Senthilkumar
This project is part of my SQL case study series and demonstrates real-world applications of CASE WHEN for business insights.


📄 License
This project is open-source and free to use for educational and non-commercial purposes.
