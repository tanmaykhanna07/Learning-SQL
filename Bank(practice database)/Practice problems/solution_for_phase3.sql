SELECT c.name, a.balance, a.account_type FROM customers AS c
INNER JOIN accounts AS a 
ON c.customer_id = a.customer_id;



SELECT c.name FROM customers AS c
LEFT JOIN accounts AS a
ON c.customer_id = a.customer_id
LEFT JOIN transactions AS t
ON a.account_id = t.account_id
WHERE txn_id IS NULL;

SELECT c.name, a.account_type, t.amount FROM customers AS c 
INNER JOIN accounts as a
ON c.customer_id = a.customer_id
INNER JOIN transactions as t
ON a.account_id = t.account_id;
