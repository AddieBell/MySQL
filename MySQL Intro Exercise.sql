-- find all products
SELECT * from products;

-- find all products that cost $1400
SELECT * from products WHERE price = 1400.0;

-- find all products that cost $11.99 or $13.99
SELECT * from products WHERE price = 11.99 OR price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * from products WHERE NOT price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * from products ORDER BY Price DESC;

-- find all employees who don't have a middle initial
SELECT * from employees WHERE MiddleInitial IS Null;

-- find distinct product prices
SELECT DISTINCT Price from products;

-- find all employees whose first name starts with the letter ‘j’
SELECT * from employees WHERE FirstName LIKE 'J%';

-- find all Macbooks
SELECT * from products WHERE Name LIKE '%Macbook%';

-- find all products that are on sale
SELECT * from products WHERE OnSale = true;

-- find the average price of all products
SELECT AVG(Price) from products WHERE Price IS NOT NULL;

-- find all Geek Squad employees who don't have a middle initial
SELECT * from employees WHERE Title LIKE '%Geek Squad%' AND MiddleInitial IS Null;

-- find all products from the products table whose stock level is in the range 
-- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * from products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY Price;
