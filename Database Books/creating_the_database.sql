CREATE DATABASE city_library;
USE city_library;

CREATE TABLE books(
	bookID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre ENUM('Fiction', 'Non-fiction', 'Science') NOT NULL,
    publiDate DATE ,
    publiTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (title, genre, publiDate) VALUES
('A Brief History of Time', 'Science', '1988-03-01'),
('The Martian', 'Fiction', '2011-09-27'),
('Cosmos', 'Science', '1980-01-01'),
('Sapiens', 'Non-fiction', '2011-01-01'),
('Astrophysics for People in a Hurry', 'Science', '2017-05-02'),
('Brief Answers to the Big Questions', 'Science', '2017-05-02');

