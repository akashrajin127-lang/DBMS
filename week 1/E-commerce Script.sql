CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE Customer (
Customer_ID INT PRIMARY KEY,
Customer_Name VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE NOT NULL,
Phone VARCHAR(15) UNIQUE,
Address VARCHAR(200),
City VARCHAR(50),
Registration_Date DATE NOT NULL
);

DESC Customer;

INSERT INTO Customer
VALUES
(101, 'Akash Raj', 'akash@gmail.com', '9876543210', '12 Main Road', 'Thoothukudi', '2025-01-10'),
(102, 'Aathi', 'aathi@gmail.com', '9876543211','25 Gandhi Street', 'Madurai', '2025-02-15'),
(103, 'chakravarthy', 'chakravarthy@gmail.com', '9876543212','10 Anna Nagar', 'Thoothukudi', '2025-03-20'),
(104, 'samuvel', 'samuvel@gmail.com', '9876543213','45 Park Road', 'Thoothukudi', '2025-04-05'),
(105, 'pradeep', 'pradeep@gmail.com', '9876543214','78 Lake View', 'Thoothukudi', '2025-05-12');

SELECT * FROM Customer; 

UPDATE Customer
SET City = 'Thoothukudi'
WHERE Customer_ID = 102;

DELETE FROM Customer
WHERE Customer_ID = 105;

SELECT * FROM Customer;