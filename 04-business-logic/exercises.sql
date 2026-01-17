-- Module 4 - Business Logic

-- Exercise 04.01
SELECT 
	account_id,
    CASE
		WHEN type = 'deposit' THEN 'IN'
        WHEN type = 'withdraw' THEN 'OUT'
        ELSE 'UNKNOWN'
	END AS direction

FROM transactions;

-- Exercise 04.02
SELECT
	account_id,
    SUM(
		CASE
			WHEN type = 'withdraw' THEN -amount
            WHEN type = 'deposit' THEN amount
		END
    ) AS total,
    
    CASE
		WHEN SUM(
				CASE
					WHEN type = 'withdraw' THEN -amount
					WHEN type = 'deposit' THEN amount
				END
        ) >= 0 THEN 'positive'
			ELSE 'negative'
	END AS status
    
FROM transactions
GROUP BY account_id;

-- Exercise 04.03
SELECT
    account_id,
    total,
    CASE
        WHEN total >= 0 THEN 'positive'
        ELSE 'negative'
    END AS status
FROM (
    SELECT
        account_id,
        SUM(
            CASE
                WHEN type = 'withdraw' THEN -amount
                WHEN type = 'deposit' THEN amount
            END
        ) AS total
    FROM transactions
    GROUP BY account_id
) t
WHERE total < 0;
