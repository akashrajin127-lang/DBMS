CREATE DATABASE inventory_db;
USE inventory_db;
CREATE TABLE seller (
    seller_id INT PRIMARY KEY AUTO_INCREMENT,
    seller_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2),
    seller_id INT,
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
);
USE inventory_db;
INSERT INTO seller (seller_name, phone, email)
VALUES
('Akash', '9876543210', 'akash@gmail.com'),
('Samuvel', '9876543211', 'samuvel@gmail.com'),
('Kartheswaar', '9876543212', 'kartheswaar@gmail.com');
-- INSERT INVENTORY
INSERT INTO inventory (product_name, quantity, price, seller_id)
VALUES
('Laptop', 25, 55000.00, 1),
('Mobile Phone', 50, 20000.00, 1),
('Keyboard', 100, 800.00, 2),
('Mouse', 75, 500.00, 2),
('Headphones', 0, 1500.00, 3),
('Monitor', 30, 12000.00, 3),
('Printer', 10, 15000.00, 3);
SELECT * FROM seller;
SELECT * FROM inventory;
USE inventory_db;
INSERT INTO inventory (product_name, quantity, price, seller_id)
VALUES ('USB Cable', 40, 300.00, 1);
SELECT * FROM inventory;
UPDATE inventory
SET quantity = 60
WHERE inventory_id = 8;
SELECT * FROM inventory;
DELETE FROM inventory
WHERE product_name = 'USB Cable';
SELECT * FROM inventory;

USE inventory_db;
SELECT COUNT(*) AS total_products
FROM inventory
WHERE quantity > 0;
SELECT product_name, quantity
FROM inventory
WHERE quantity = 0;
SELECT product_name, quantity
FROM inventory
WHERE quantity = (SELECT MAX(quantity) FROM inventory);
SELECT AVG(quantity) AS average_quantity
FROM inventory;
SELECT SUM(quantity) AS total_quantity
FROM inventory;