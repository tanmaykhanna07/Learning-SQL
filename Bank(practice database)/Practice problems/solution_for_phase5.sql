SET autocommit = 0;

UPDATE accounts
SET balance = balance - 1500 
WHERE account_id = 3;

UPDATE accounts
SET balance = balance + 1500
WHERE account_id = 2;

COMMIT;

-- If first update runs, then nothing actually happens till the commit command is run. If the server crashes before the commit is run then when the server is reloaded the data will remain the same as before making any changes or update statements
