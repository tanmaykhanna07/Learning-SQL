SELECT COUNT(txn_id), MAX(amount), AVG(amount) FROM transactions
GROUP BY txn_type;

SELECT * FROM transactions 
WHERE txn_type = 'Deposit'
GROUP BY account_id
HAVING COUNT(txn_id) > 3;