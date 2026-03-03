INSERT INTO books (title, genre, publiDate) VALUES
('Atomic Habits' , 'Non-fiction' , '2018-10-16'),
('Hunting Adeline' , 'Fiction' , '2021-08-12'),
('Metamorphosis', 'Fiction', '1915-10-01');
SELECT * FROM books WHERE genre = 'Fiction' AND title LIKE "%the%";
UPDATE books
SET genre = 'Non-Fiction'
WHERE bookID = 2;
DELETE FROM books WHERE bookID = 1;