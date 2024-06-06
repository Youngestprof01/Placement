SELECT * FROM dimcustomer;
SELECT * FROM dimproduct;
SELECT * FROM factsales;

-- List all products available in the inventory.
SELECT productname FROM dimproduct;
-- Find the total number of customers in the database.
SELECT COUNT(customerid) FROM dimcustomer;
-- Display distinct categories of products sold.
SELECT DISTINCT(category) FROM dimproduct;
-- Identify customers who signed up in 2023.
SELECT customerid, firstname, lastname FROM dimcustomer 
WHERE signupyear = 2023;
--  List products priced above $500.
SELECT productname, category, price FROM dimproduct 
WHERE price > 500;

-- Show products with less than 50 items in stock.
SELECT productname, category FROM dimproduct 
WHERE stockquantity < 50;
-- Display the top 10 most expensive products.
SELECT productname, category, price FROM dimproduct 
ORDER BY price DESC
LIMIT 10;
-- Find the average sale amount per transaction.
SELECT AVG(saleamount) FROM factsales;
-- List all sales transactions between January 1, 2023, and December 31,
-- 2023.
SELECT saleid, saledate FROM factsales
WHERE saledate BETWEEN '2023-01-01' AND '2023-12-31';

-- Calculate the total revenue generated from sales.
SELECT SUM(saleamount) from factsales;
-- Round the average price of all products to 2 decimal places.
SELECT AVG(saleamount) from factsales;
-- Display all cities that have the letter ‘e’
SELECT DISTINCT(city) FROM dimcustomer
WHERE city LIKE '%e%';

-- List customer emails that contain 'gmail'.
SELECT email FROM dimcustomer
WHERE email LIKE '%gmail';

-- Find the total quantity of products sold for each product.
SELECT productid, SUM(saleamount) Sales_Amount FROM factsales
GROUP BY productid 
ORDER BY productid;

-- Calculate the minimum, maximum, and average price of products in
-- each category.

SELECT category, MIN(price), MAX(price), AVG(price) 
FROM dimproduct
GROUP BY category;

-- Count the number of products in each category.
SELECT category, COUNT(*) FROM dimproduct
GROUP BY category;