CREATE DATABASE BookstoreApp;
GO
USE BookstoreApp;
GO

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price DECIMAL(5, 2),
    stock_quantity INT
);

INSERT INTO Books (book_id, title, author, price, stock_quantity) 
VALUES 
    (1, 'Deep Learning', 'Ian Goodfellow', 45.99, 10),
    (2, 'Python Crash Course', 'Eric Matthes', 25.50, 20),
    (3, 'SQL QuickStart', 'Walter Shields', 19.99, 15),
    (4, 'The Pragmatic Programmer', 'Andy Hunt', 35.00, 5);

SELECT * FROM Books;
UPDATE Books 
SET stock_quantity = 14 
WHERE book_id = 3;
DELETE FROM Books 
WHERE book_id = 4;