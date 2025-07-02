-- Create Database
show databases;
use cloudydata;


-- Create table
CREATE TABLE sales (
sales_id INT,
product_name VARCHAR(50),
category VARCHAR(50),
sales_date DATE,
quantity INT,
price DECIMAL(10, 2)
);

-- Insert data into Tables

INSERT INTO sales (sales_id, product_name, category, sales_date, quantity, price)
VALUES
(1, 'Laptop', 'Electronics', '2024-01-10', 5, 1000.00),
(2, 'Smartphone', 'Electronics', '2024-01-15', 10, 600.00),
(3, 'Desk Chair', 'Furniture', '2024-02-20', 2, 150.00),
(4, 'Office Desk', 'Furniture', '2024-03-05', 1, 300.00),
(5, 'Coffee Maker', 'Appliances', '2024-03-22', 3, 75.00),
(6, 'Blender', 'Appliances', '2024-04-10', 4, 50.00),
(7, 'Television', 'Electronics', '2024-05-01', 2, 800.00),
(8, 'Headphones', 'Electronics', '2024-05-12', 15, 100.00),
(9, 'Sofa', 'Furniture', '2024-06-10', 1, 500.00),
(10, 'Microwave', 'Appliances', '2024-06-25', 2, 120.00);


-- 1)Write a query to categorize sales as 'High' if the price is greater than 500, 'Medium'if the price is between 100 and 500, and 'Low' if the price is less than 100.

select *,
case when price >500 then 'high' 
when price>100 and price<500 then 'Medium'
else 'Low' end as 'price_category' from sales;

-- 2)Write a query to display sales_id, product_name, and a column indicating whetherthe sale was made in the 'First Half' or 'Second Half' of the year.

select sales_id,product_name,
case 
when sales_date>'2024-01-01'and sales_date<'2024-06-01' then 'first half'
when sales_date>'2024-06-01' and sales_date<'2024-012-01'  then 'second half'
else
'none'
end as sales_year from sales;

-- Soultion 2:

select sales_id,product_name,
case 
WHEN MONTH(sales_date) BETWEEN 1 AND 6 THEN 'First Half'
        ELSE 'Second Half'
end as sales_year from sales;

-- 3)Write a query to add a discount column where the discount is 10% for 'Electronics',5% for 'Furniture', and 3% for 'Appliances'

select sales_id,category,
case 
WHEN category='electronic' then '10%'
WHEN category='furniture' then '5%'
        ELSE  '3%'
end as  discount from sales;

-- 4.Write a query to label the sales as 'Recent' if the sales_date is within the last 3months, otherwise 'Old'.

select *,
case 
when sales_date>= (current_date - interval 3 month) then 'recent'
        ELSE  'old'
end as  sales_status from sales;

-- 5.Write a query to add a column that indicates whether the sale was made in 'Q1','Q2', 'Q3', or 'Q4' of the year

select *,
case 
  WHEN MONTH(sales_date) BETWEEN 1 AND 3 THEN 'Q1'
    WHEN MONTH(sales_date) BETWEEN 4 AND 6 THEN 'Q2'
    WHEN MONTH(sales_date) BETWEEN 7 AND 9 THEN 'Q3'
    else 'Q4'
        
end as  sales_status from sales;

-- 6.Write a query to display sales_id, product_name, and a column indicating whetherthe sale was made in the 'First Half' or 'Second Half' of the year

select sales_id,product_name,
case 
when month(sales_date) between 1 and 3 then 'first half'
        ELSE  'second half'
end as  sales_status from sales;

-- 7. Write a query to create a column 'Sale_Status' that marks a sale as 'Completed' ifquantity > 0 and 'Pending' if quantity = 0.


select *,
case 
when quantity> 0 then 'completed'
        when quantity= 0 then  'pending'
        else 'unkonown'
end as  sales_status from sales;