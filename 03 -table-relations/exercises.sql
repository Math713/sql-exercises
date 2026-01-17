-- Module 3 - Table Relations

-- Exercice 03.01
SELECT customers.name, orders.total
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;

-- Exercise 03.02
SELECT customers.name, orders.total
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL;

-- Exercise 03.03
SELECT 
	customers.id,
	customers.name, 
	SUM(orders.total) AS total
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.id, customers.name;