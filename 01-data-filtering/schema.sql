CREATE DATABASE IF NOT EXISTS sql_mastery_path;
USE sql_mastery_path;

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    created_at DATE
);

INSERT INTO customers (name, email, created_at) VALUES
('Alice', 'alice@email.com', '2024-01-10'),
('Bob', 'bob@email.com', '2024-02-05'),
('Charlie', 'charlie@email.com', '2023-12-20');
