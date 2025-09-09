-- Selecting the Database to use for the assignment
USE salesdb;
-- view all from employees table
SELECT * FROM employees;

-- Question 1 
/*
An SQL query to get the firstName, lastName, 
email, and officeCode of all employees.
Using an INNER JOIN to combine the employees table with 
the offices table using the officeCode column.
*/
-- using INNER JOIN
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- Question 2 
/* An SQL query to get the productName, productVendor,
 and productLine from the products table.
 Using a LEFT JOIN** to combine the products table with
 the productlines table using the productLine column.
*/

-- view all from products table

SELECT * FROM products;

-- Using LEFT JOIN
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;
    
    
    -- Question 3
    /* 
    An SQL query to retrieve the orderDate, shippedDate, 
    status, and customerNumber for the first 10 orders.  
    Using a RIGHT JOIN to combine the customers table with 
    the orders table using the customerNumber column.
    */
    
    -- view all from customers table
    SELECT * FROM customers;
    
    
    -- Using RIGHT JOIN
    SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;







-- End of answers.sql

