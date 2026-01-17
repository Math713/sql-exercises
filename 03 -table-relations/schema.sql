CREATE DATABASE IF NOT EXISTS sql_exercises;
USE sql_exercises;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATE NOT NULL
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    created_at DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (name, email, created_at) VALUES
('Alice', 'alice@email.com', '2024-01-10'),
('Bob', 'bob@email.com', '2024-01-15'),
('Carol', 'carol@email.com', '2024-02-01');

INSERT INTO orders (customer_id, total, created_at) VALUES
(1, 250.00, '2024-02-10'),
(1, 120.00, '2024-02-12'),
(2, 500.00, '2024-03-01');

