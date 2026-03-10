SELECT name, email FROM customers
WHERE email LIKE "%gmail.com%";

SET SQL_SAFE_UPDATES = 0;
UPDATE accounts
SET account_type = 'Savings'
WHERE account_type = 'Checking';
SET SQL_SAFE_UPDATES = 1;
ALTER TABLE accounts MODIFY COLUMN account_type ENUM('Savings', 'Credit');

DELETE FROM accounts 
WHERE account_id = 10;
-- Assuming your Foreign Keys use ON DELETE CASCADE, what happens to their transactions?
-- Answer - the row from transactions get deleted where account_id = 10;

SELECT amount FROM transactions
ORDER BY amount DESC LIMIT 5;