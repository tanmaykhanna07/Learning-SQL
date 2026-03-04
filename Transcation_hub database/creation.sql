CREATE DATABASE transaction_hub;
USE transaction_hub;

CREATE TABLE accounts(
	account_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE transactions(
	txn_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    txn_type ENUM ('Deposit', 'Withdrawal'),
    amount DECIMAL(10,2) NOT NULL,
    txn_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


