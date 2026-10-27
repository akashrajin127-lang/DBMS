CREATE DATABASE librarydb;
USE librarydb;

CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category ENUM('Fictional', 'Thriller', 'Horror', 'Science', 'Romance'),
    price INT,
    available_copies INT
);

INSERT INTO book (book_name, author, category, price, available_copies)
VALUES
('The Alchemist', 'Paulo Coelho', 'Fictional', 450, 5),
('The Silent Patient', 'Alex Michaelides', 'Thriller', 550, 3),
('Dracula', 'Bram Stoker', 'Horror', 400, 4),
('A Brief History of Time', 'Stephen Hawking', 'Science', 600, 6),
('The Notebook', 'Nicholas Sparks', 'Romance', 350, 2);

SELECT * FROM book;

UPDATE book
SET price = 500
WHERE book_id = 1;

UPDATE book
SET available_copies = 10
WHERE book_id = 4;

SELECT * FROM book
WHERE category = 'Science';
