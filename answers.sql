-- Question 1: INNER JOIN employees with offices
-- Get firstName, lastName, email, and officeCode of all employees
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN products with productlines
-- Get productName, productVendor, and productLine from products table
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3: RIGHT JOIN customers with orders
-- Get orderDate, shippedDate, status, and customerNumber for first 10 orders
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
