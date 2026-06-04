-- Market Analysis

SELECT
    Market,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales),2) AS profit_margin
FROM Global_Superstore
GROUP BY Market
ORDER BY total_sales DESC;

-- Region Analysis

SELECT
    Region,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- Top Countries

SELECT TOP 10
    Country,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Country
ORDER BY total_sales DESC;