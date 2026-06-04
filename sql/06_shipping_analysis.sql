-- Shipping Cost Overview

SELECT
    SUM(Shipping_Cost) AS total_shipping_cost,
    AVG(Shipping_Cost) AS average_shipping_cost
FROM Global_Superstore;

-- Ship Mode Analysis

SELECT
    Ship_Mode,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Shipping_Cost) AS total_shipping_cost,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Ship_Mode
ORDER BY total_profit DESC;

-- Order Priority Analysis

SELECT
    Order_Priority,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Global_Superstore
GROUP BY Order_Priority
ORDER BY total_orders DESC;