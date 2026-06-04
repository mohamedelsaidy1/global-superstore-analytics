-- Customer Segment Analysis

SELECT
    Segment,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    COUNT(DISTINCT Customer_ID) AS total_customers
FROM Global_Superstore
GROUP BY Segment;

-- Top Customers by Sales

SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC;

-- Top Customers by Profit

SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Customer_Name
ORDER BY total_profit DESC;