create database adidas_sales;
use adidas_sales;
desc adidas_data;
select * from adidas_data;

-- What are the products sold and how many are they?
SELECT Product, SUM(Units_Sold) AS Total_Units_Sold
FROM adidas_data
GROUP BY Product;

-- What is the best and least selling product?
-- Best selling product
SELECT Product, SUM(Units_Sold) AS Total_Units_Sold
FROM adidas_data
GROUP BY Product
ORDER BY Total_Units_Sold DESC
LIMIT 1; 

-- Least selling product
SELECT Product, SUM(Units_Sold) AS Total_Units_Sold
FROM adidas_data
GROUP BY Product
ORDER BY Total_Units_Sold 
LIMIT 1;

-- what is the best selling product for all retailers?
SELECT Retailer, Product, SUM(Units_Sold) AS Total_Units_Sold
FROM adidas_data
GROUP BY Retailer, Product
ORDER BY Retailer, Total_Units_Sold DESC;

-- What was the total sales for each year?
SELECT Year, SUM(Total_Sales) AS Total_Sales
FROM adidas_data
GROUP BY Year;

-- What is the most and least profitable product?
-- Most profitable product
SELECT Product, SUM(Operating_Profit) AS Total_Profit
FROM adidas_data
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 1; 

SELECT Product, SUM(Operating_Profit) AS Total_Profit
FROM sales_data
GROUP BY Product
ORDER BY Total_Profit ASC
LIMIT 1; -- Least profitable product




