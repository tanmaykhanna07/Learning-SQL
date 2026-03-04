CREATE TABLE members(
	name VARCHAR(100) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    join_date DATE DEFAULT (current_date()),
    member_id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE borrowed_books(
	borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    return_date DATE,
    member_id INT,
    FOREIGN KEY (book_id) REFERENCES books(bookID),
    FOREIGN KEY (member_id) REFERENCES members(member_id) ON DELETE SET NULL
);