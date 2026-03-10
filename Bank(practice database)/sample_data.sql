CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    balance DECIMAL(10, 2) DEFAULT 0.00,
    account_type ENUM('Savings', 'Checking', 'Credit'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);


INSERT INTO customers (name, email) VALUES
('Aarav Patel', 'aarav@example.com'),
('Sneha Sharma', 'sneha@example.com'),
('Raj Verma', 'raj@example.com'),    
('Fatima Khan', 'fatima@example.com'),
('Priya Singh', 'priya@example.com');

INSERT INTO accounts (customer_id, balance, account_type) VALUES
(1, 15000.50, 'Savings'),
(2, 60000.00, 'Checking'),
(2, 5000.00, 'Savings'),    
(4, 120000.00, 'Checking'), 
(5, 2500.00, 'Savings');