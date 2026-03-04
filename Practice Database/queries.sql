CREATE TABLE departments (
	dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);
CREATE TABLE employees(
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    CONSTRAINT check_age CHECK(age >= 18),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    phone_number INT,
    status ENUM('Active', 'Not active')
);

ALTER TABLE employees MODIFY COLUMN phone_number INT UNIQUE;

ALTER TABLE employees MODIFY COLUMN status ENUM('Active', 'Not active') DEFAULT 'Active';