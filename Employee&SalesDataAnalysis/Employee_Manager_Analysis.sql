-- Create database:

Create database cloudydata;
use cloudydata;



-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_department VARCHAR(50),
    emp_salary DECIMAL(10, 2)
);

-- Insert sample data into employees table
INSERT INTO employees (emp_id, emp_name, emp_department, emp_salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Finance', 60000),
(3, 'Charlie', 'IT', 70000),
(4, 'David', 'Marketing', 55000),
(5, 'Eve', 'HR', 52000),
(6, 'Frank', 'Finance', 65000),
(7, 'Grace', 'IT', 72000);

-- Create managers table
CREATE TABLE managers (
    mgr_id INT PRIMARY KEY,
    mgr_name VARCHAR(100),
    mgr_department VARCHAR(50),
    mgr_salary DECIMAL(10, 2)
);

-- Insert sample data into managers table
INSERT INTO managers (mgr_id, mgr_name, mgr_department, mgr_salary) VALUES
(1, 'Fred', 'Finance', 90000),
(2, 'George', 'IT', 95000),
(3, 'Helen', 'Marketing', 85000),
(4, 'Ivy', 'Sales', 80000),
(5, 'Jack', 'HR', 88000);



-- Sample use cases and queries:


-- Q1: Retrieve all unique names from employees and managers
select emp_name from employees 
union 
select mgr_name from managers;

-- Q2: Names and departments where salary > 70000 (distinct results)
SELECT emp_name AS name, emp_department AS department FROM employees WHERE emp_salary > 70000
UNION
SELECT mgr_name, mgr_department FROM managers WHERE mgr_salary > 70000;

-- Q3: Total salary by department from both tables
SELECT emp_department AS department, SUM(emp_salary) AS total_salary
FROM employees
GROUP BY emp_department
UNION ALL
SELECT mgr_department, SUM(mgr_salary)
FROM managers
GROUP BY mgr_department;

-- Q4: Names that are common to both employees and managers

select emp_name from employees 
intersect
select mgr_name from managers ;


-- Q5: Distinct departments and average salaries from both tables
SELECT emp_department AS department, AVG(emp_salary) AS avg_salary
FROM employees
GROUP BY emp_department
UNION
SELECT mgr_department, AVG(mgr_salary)
FROM managers
GROUP BY mgr_department;

-- Q6: Retrieve all records from both tables including duplicates
SELECT emp_name AS name, emp_department AS department, emp_salary AS salary FROM employees
UNION ALL
SELECT mgr_name, mgr_department, mgr_salary FROM managers;


