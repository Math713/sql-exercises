-- Module 2 - Data Aggregation

-- Exercise 02.1
SELECT SUM(amount) AS Total FROM transactions WHERE type = 'deposit';

-- Exercise 02.02
SELECT account_id,SUM(amount) AS Total FROM transactions WHERE type = 'deposit' GROUP BY account_id;

-- Exercise 02.03
SELECT
	account_id,
    SUM(CASE
			WHEN type = 'deposit' THEN amount
            WHEN type = 'withdraw' THEN -amount
		END
    ) AS balance
    
FROM transactions 
GROUP BY account_id;

-- Exercise 02.04
SELECT 
	account_id,
	SUM(
		CASE
			WHEN type = 'deposit' THEN amount
			WHEN type = 'withdraw' THEN -amount
		END
	) AS balance

FROM transactions
WHERE type = 'deposit'
GROUP BY account_id
HAVING balance > 0;    