-- Dataset Overview

SELECT
    MIN(Order_Date) AS start_date,
    MAX(Order_Date) AS end_date,
    COUNT(*) AS total_rows
FROM Global_Superstore;

-- Total Orders

SELECT
    COUNT(DISTINCT Order_ID) AS total_orders
FROM Global_Superstore;

-- Total Customers

SELECT
    COUNT(DISTINCT Customer_ID) AS total_customers
FROM Global_Superstore;

-- Total Products

SELECT
    COUNT(DISTINCT Product_ID) AS total_products
FROM Global_Superstore;