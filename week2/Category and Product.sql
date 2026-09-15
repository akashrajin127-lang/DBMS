CREATE DATABASE shop_db;
USE shop_db;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories (name) VALUES
('Electronics'),
('Furniture'),
('Stationery'),
('Accessories');

INSERT INTO products (name, price, category_id) VALUES
('Laptop', 60000, 1),
('Mobile', 20000, 1),
('Tablet', 15000, 1),
('Chair', 3000, 2),
('Table', 5000, 2),
('Notebook', 100, 3),
('Pen', 50, 3),
('Bag', 1200, 4),
('Watch', 2500, 4);

SELECT * FROM categories;

SELECT * FROM products;

SELECT p.id, p.name, p.price, c.name AS category
FROM products p
JOIN categories c
ON p.category_id = c.id;


INSERT INTO products (name, price, category_id)
VALUES ('Keyboard', 1200, 1);


SELECT * FROM products
WHERE id = 10;

UPDATE products
SET price = 1500
WHERE id = 10;

SELECT * FROM products
WHERE id = 10;

DELETE FROM products
WHERE id = 10;

SELECT * FROM products;

SELECT c.name AS category,
       COUNT(p.id) AS total_products
FROM categories c
LEFT JOIN products p
ON c.id = p.category_id
GROUP BY c.id, c.name;

SELECT c.name AS category,
       AVG(p.price) AS average_price
FROM categories c
JOIN products p
ON c.id = p.category_id
GROUP BY c.id, c.name;

SELECT c.name AS category,
       MAX(p.price) AS highest_price
FROM categories c
JOIN products p
ON c.id = p.category_id
GROUP BY c.id, c.name;

SELECT name, price
FROM products
WHERE price > 10000;