-- KPI Summary

SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 / SUM(Sales),
        2
    ) AS profit_margin
FROM Global_Superstore;

-- Average Order Value

SELECT
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS average_order_value
FROM Global_Superstore;

-- Sales Trend

SELECT
    YEAR(Order_Date) AS order_year,
    SUM(Sales) AS total_sales
FROM Global_Superstore
GROUP BY YEAR(Order_Date)
ORDER BY order_year;

-- Profit Trend

SELECT
    YEAR(Order_Date) AS order_year,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY YEAR(Order_Date)
ORDER BY order_year;