CREATE VIEW user_statements AS
SELECT c.name, a.account_type, t.amount, t.txn_type, t.created_at FROM customers AS c
INNER JOIN accounts AS a
ON c.customer_id = a.customer_id
INNER JOIN transactions as t
ON a.account_id = t.account_id;

SELECT * FROM user_statements;