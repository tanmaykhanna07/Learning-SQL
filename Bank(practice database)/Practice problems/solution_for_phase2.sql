SELECT SUM(balance) FROM accounts;
-- if i needed to group by account_type
SELECT account_type, SUM(balance) FROM accounts
GROUP BY account_type;

SELECT account_type, AVG(balance) FROM accounts
GROUP BY account_type;

SELECT COUNT(*) FROM transactions
WHERE status = 'FAILED';

SELECT customer_id FROM accounts
GROUP BY customer_id
HAVING COUNT(account_id) > 3;