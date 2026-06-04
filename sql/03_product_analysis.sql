-- Category Performance

SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales),2) AS profit_margin
FROM Global_Superstore
GROUP BY Category
ORDER BY total_profit DESC;

-- Sub-Category Performance

SELECT
    Sub_Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales),2) AS profit_margin
FROM Global_Superstore
GROUP BY Sub_Category
ORDER BY total_profit DESC;

-- Top 10 Products

SELECT TOP 10
    Product_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Product_Name
ORDER BY total_profit DESC;

-- Bottom 10 Products

SELECT TOP 10
    Product_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Product_Name
ORDER BY total_profit ASC;