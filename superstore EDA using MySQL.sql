SHOW DATABASES;
USE project;
SHOW TABLES;
DESCRIBE sample_superstore;
SELECT * FROM sample_superstore;

-- number of records in this dataset
SELECT COUNT(*) FROM sample_superstore; 

SELECT DISTINCT Customer_ID,Customer_name,State,City FROM sample_superstore;

-- Number of Customers State wise
SELECT COUNT(DISTINCT Customer_name ) AS No_of_Customers ,State FROM sample_superstore GROUP BY State  LIMIT 10;

-- Sorting columns using ship mode 
SELECT * FROM sample_superstore ORDER BY Ship_mode;

-- total customers by region
SELECT COUNT(Customer_name) AS Customer_Per_region ,Region FROM sample_superstore Group by Region  ;

-- total customers by Segment
SELECT COUNT(Customer_name) AS Customer_Per_Segment ,Segment FROM sample_superstore Group by Segment;

SELECT DISTINCT Sub_Category from sample_superstore;

-- count of individual sub categories 
SELECT COUNT(Sub_Category),Sub_Category FROM  sample_superstore GROUP BY Sub_Category;


-- SALES ANALYSIS


-- Sorting data by SALES 
SELECT * FROM sample_superstore ORDER BY Sales ;

-- SALES by Ship mode 
SELECT COUNT(Sales),Ship_Mode FROM sample_superstore GROUP BY Ship_Mode ;

-- TOTAL SALES by Region
SELECT COUNT(Sales),Region FROM sample_superstore GROUP BY Region;

-- SALES of SUB CATEGORIES
SELECT Count(Sales),Sub_Category FROM sample_superstore  GROUP BY Sub_Category;

-- WHICH PRODUCT SALES are MORE????
SELECT Count(Sales),Sub_Category FROM sample_superstore GROUP BY Sub_Category ORDER BY COUNT(Sales) DESC;

-- CUSTOMER WHOSE SALES IS 0
SELECT * FROM sample_superstore WHERE Sales =0;

SELECT MAX(Sales),SUM(Sales) FROM sample_superstore;

-- PERCENTAGE OF SALES BY State 
SELECT (Sales/SUM(Sales))*100 AS Percentage_of_Sales ,State FROM sample_superstore GROUP BY State ORDER BY Percentage_of_Sales;


-- PROFIT ANALYSIS 

-- PROFIT OBTAINED
SELECT MAX(Profit) ,MIN(Profit),SUM(Profit) FROM sample_superstore  ; 

SELECT MAX(Profit) ,MIN(Profit),SUM(Profit),State,Region FROM sample_superstore GROUP BY State ORDER BY Region;

-- CUSTOMER DETAILS WHO HAVING NEGATIVE PROFIT 
SELECT * FROM sample_superstore where Profit LIKE '-%%%%';

-- SUB CATEGORIES HAVING PROFIT GREATER THAN 1000
SELECT Profit,Sub_Category FROM sample_superstore WHERE Profit > 1000 GROUP BY Sub_Category;

-- AVERAGE of PROFIT That EACH STATE HAS !
SELECT AVG(Profit),State FROM sample_superstore GROUP BY State ;





