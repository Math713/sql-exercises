CREATE DATABASE IF NOT EXISTS sql_exercises;
USE sql_exercises;

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    type VARCHAR(20) NOT NULL, -- deposit | withdraw
    amount DECIMAL(10,2) NOT NULL,
    created_at DATE NOT NULL
);

INSERT INTO transactions (account_id, type, amount, created_at) VALUES
(1, 'deposit', 1000, '2024-01-01'),
(1, 'withdraw', 200, '2024-01-05'),
(1, 'deposit', 500, '2024-01-10'),
(2, 'deposit', 300, '2024-01-03'),
(2, 'withdraw', 800, '2024-01-08'),
(3, 'deposit', 1500, '2024-01-02');