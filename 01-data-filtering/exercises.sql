-- Module 01 - Data Filtering 

-- Exercise 01.1
SELECT * FROM customers ORDER BY created_at DESC;

-- Exercise 01.2
SELECT name, email FROM customers WHERE created_at > '2024-01-01';

-- EXERCISE 01.3
SELECT * FROM customers ORDER BY created_at DESC LIMIT 2;