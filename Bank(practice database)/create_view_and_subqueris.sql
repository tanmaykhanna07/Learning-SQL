SELECT c.name 
FROM customers AS c
INNER JOIN accounts AS a ON c.customer_id = a.customer_id
WHERE a.balance = (SELECT MAX(balance) FROM accounts);


CREATE VIEW teller_dashboard AS
SELECT c.name, a.account_type
FROM customers AS c
INNER JOIN accounts AS a ON c.customer_id = a.customer_id;

SELECT * FROM teller_dashboard;