SET autocommit = 0;

UPDATE transactions SET balance = balnace - 1500 WHERE account_id = 101;
UPDATE transactions SET balance = balnace + 1500 WHERE account_id = 102;

COMMIT;