DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    upi_id VARCHAR(50) UNIQUE
);

CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    balance DECIMAL(10, 2) DEFAULT 0.00,
    account_type ENUM('Savings', 'Checking', 'Credit') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

CREATE TABLE transactions (
    txn_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    txn_type ENUM('DEBIT', 'CREDIT') NOT NULL,
    status ENUM('PENDING', 'COMPLETED', 'FAILED', 'REFUNDED') DEFAULT 'PENDING',
    target_upi_id VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

INSERT INTO customers (name, email, phone, upi_id) VALUES
('Aarav Patel', 'aarav.p@gmail.com', '9876543210', 'aarav@okicici'),
('Sneha Sharma', 'sneha.s@yahoo.com', '9876543211', 'sneha@okhdfc'),
('Raj Verma', 'raj.v@gmail.com', '9876543212', NULL),         
('Fatima Khan', 'fatima.k@outlook.com', '9876543213', 'fatima@okaxis'),
('Priya Singh', 'priya.singh@gmail.com', '9876543214', 'priya@oksbi'),
('Rohan Gupta', 'rohan.tech@gmail.com', '9876543215', 'rohan@okicici'),
('Kavya Iyer', 'kavya.i@protonmail.com', '9876543216', 'kavya@okhdfc'),
('Amit Desai', 'amit.d@gmail.com', '9876543217', 'amit@oksbi'),
('Neha Reddy', 'neha.r@yahoo.com', '9876543218', 'neha@okaxis'),
('Vikram Joshi', 'vikram.j@gmail.com', '9876543219', 'vikram@okicici');

INSERT INTO accounts (customer_id, balance, account_type) VALUES
(1, 15500.50, 'Savings'),
(2, 85000.00, 'Checking'),
(2, 5000.00, 'Savings'),
(4, 250000.00, 'Checking'),
(4, 15000.00, 'Credit'),
(5, 3200.00, 'Savings'),
(6, 45000.75, 'Checking'),
(7, 12000.00, 'Savings'),
(8, 0.00, 'Savings'),       
(9, 94000.00, 'Checking'),
(10, -500.00, 'Credit');   


INSERT INTO transactions (account_id, amount, txn_type, status, target_upi_id, created_at) VALUES
(1, 1500.00, 'DEBIT', 'COMPLETED', 'sneha@okhdfc', '2026-03-01 10:15:00'),
(1, 500.00, 'CREDIT', 'COMPLETED', 'kavya@okhdfc', '2026-03-02 11:20:00'),
(2, 12000.00, 'DEBIT', 'COMPLETED', 'fatima@okaxis', '2026-03-02 14:45:00'),
(4, 50000.00, 'CREDIT', 'COMPLETED', 'sneha@okhdfc', '2026-03-03 09:00:00'),
(5, 2000.00, 'DEBIT', 'FAILED', 'amazon@upi', '2026-03-03 18:30:00'),        
(6, 100.00, 'DEBIT', 'COMPLETED', 'zomato@upi', '2026-03-04 20:15:00'),
(6, 100.00, 'DEBIT', 'REFUNDED', 'zomato@upi', '2026-03-04 20:45:00'),      
(7, 4500.00, 'DEBIT', 'PENDING', 'aarav@okicici', '2026-03-06 22:10:00'),    
(9, 150.00, 'DEBIT', 'FAILED', 'netflix@upi', '2026-03-06 23:00:00'),
(10, 15000.00, 'CREDIT', 'COMPLETED', 'employer@upi', '2026-03-01 08:00:00');