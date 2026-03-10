--problems: 
-- Write a query to get the name and balance of all customers who have an active account
-- Write a query to get the name of all registered customers, and their balance. (Look at what happens to Raj in the output).

-- Write a query to find the names of customers who do not have an account yet. (Hint: Use a LEFT JOIN, and then filter using a WHERE balance IS NULL).

-- Write a query to get the name, account_type, and balance for all customers whose balance is strictly greater than 50,000.

-- Write a query using an INNER JOIN and GROUP BY to calculate the total sum of balances for each name.

SELECT c.name, a.balance FROM customers AS c
INNER JOIN accounts AS a
ON c.customer id = a.customer_id;

SELECT c.name FROM customers AS c
LEFT JOIN accounts AS a
ON c.customer_id = a.customer_id;

SELECT c.name FROM customers AS c
LEFT JOIN accounts AS a
ON c.customer_id = a.customer_id
WHERE a.balance IS NULL;

SELECT c.name, a.account_type, a.balance FROM customers AS c
INNER JOIN accounts AS a
ON c.customer_id = a.customer_id
WHERE a.balance > 50000;

SELECT c.name, SUM(a.balance) FROM customers AS c
INNER JOIN accounts AS a
ON c.customer_id = a.customer_id
GROUP BY c.name;
