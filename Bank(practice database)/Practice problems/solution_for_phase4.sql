SELECT c.name FROM customers AS c
INNER JOIN accounts AS a
ON c.customer_id = a.customer_id
WHERE a.balance < (SELECT AVG(balance) FROM accounts);

SELECT a.account_id FROM accounts AS a
INNER JOIN transactions as t
ON a.account_id = t.account_id
WHERE t.created_at = (SELECT MIN(created_at) FROM transactions);

SELECT amount FROM transactions
WHERE account_id IN (SELECT account_id FROM accounts WHERE customer_id IN (SELECT customer_id FROM customers WHERE name = "Fatima Khan"));