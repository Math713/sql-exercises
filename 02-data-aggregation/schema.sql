CREATE DATABASE IF NOT EXISTS sql_exercises;
USE sql_exercises;

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    type VARCHAR(20) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    created_at DATE NOT NULL
);

INSERT INTO transactions (account_id, type, amount, created_at) VALUES
(1, 'deposit', 1000.00, '2024-01-10'),
(1, 'withdraw', 200.00, '2024-01-12'),
(1, 'deposit', 500.00, '2024-02-01'),
(2, 'deposit', 2000.00, '2024-01-15'),
(2, 'withdraw', 300.00, '2024-02-10'),
(3, 'deposit', 700.00, '2024-03-05');
