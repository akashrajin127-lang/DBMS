Inventory Management System
 Project Overview

The Inventory Management System is a MySQL-based database project designed to manage sellers, products, stock quantities, and product prices efficiently.

The system maintains relationships between sellers and their inventory and demonstrates essential database operations such as CRUD operations, aggregate functions, primary keys, foreign keys, and SQL queries.

 Objectives
Manage seller information.
Store and maintain product details.
Track available inventory quantities.
Manage product prices.
Perform Create, Read, Update, and Delete (CRUD) operations.
Identify out-of-stock products.
Calculate inventory statistics using aggregate functions.
Maintain data integrity using primary and foreign keys.
Technologies Used
Database: MySQL
Language: SQL
Tool: MySQL Workbench
🗂️ Database Structure
1. Seller Table

Stores information about product sellers.

Column	Data Type	Description
seller_id	INT	Primary key, auto-increment
seller_name	VARCHAR(100)	Name of the seller
phone	VARCHAR(15)	Seller phone number
email	VARCHAR(100)	Seller email
2. Inventory Table

Stores information about products and their stock.

Column	Data Type	Description
inventory_id	INT	Primary key, auto-increment
product_name	VARCHAR(100)	Name of the product
quantity	INT	Available stock quantity
price	DECIMAL(10,2)	Product price
seller_id	INT	Foreign key referencing seller
🔗 Database Relationship

The seller_id column in the inventory table is a foreign key that references the seller_id column in the seller table.

SELLER
---------------------
seller_id (PK)
seller_name
phone
email
        |
        | 1 : Many
        |
        ↓
INVENTORY
---------------------
inventory_id (PK)
product_name
quantity
price
seller_id (FK)

One seller can manage multiple inventory products.

 Sample Sellers
Seller ID	Seller Name
1	Akash
2	Samuvel
3	Kartheswaar
Sample Products
Product	Quantity	Price	Seller
Laptop	20	₹50,000	Akash
Mobile	45	₹18,000	Akash
Keyboard	80	₹750	Samuvel
Mouse	60	₹450	Samuvel
Speaker	25	₹2,000	Kartheswaar
Monitor	15	₹10,000	Kartheswaar
Printer	5	₹12,000	Kartheswaar
⚙️ Features
1. Seller Management

The system can store:

Seller name
Phone number
Email address
2. Inventory Management

The system maintains:

Product name
Stock quantity
Product price
Seller information
3. CRUD Operations

The project demonstrates:

CREATE – Add a new product.
READ – Display inventory records.
UPDATE – Modify product quantity or price.
DELETE – Remove a product.
4. Inventory Analysis

SQL aggregate functions are used to calculate:

Total number of products
Out-of-stock products
Highest stocked product
Average inventory quantity
Total inventory quantity
Total inventory value
Important SQL Queries
Total Products
SELECT COUNT(*) AS total_products
FROM inventory;
Out-of-Stock Products
SELECT product_name, quantity
FROM inventory
WHERE quantity = 0;
Highest Stocked Product
SELECT product_name, quantity
FROM inventory
WHERE quantity = (
    SELECT MAX(quantity)
    FROM inventory
);
Average Quantity
SELECT AVG(quantity) AS average_quantity
FROM inventory;
Total Quantity
SELECT SUM(quantity) AS total_quantity
FROM inventory;
Total Inventory Value
SELECT SUM(quantity * price) AS total_inventory_value
FROM inventory;
Data Integrity

The database uses:

Primary Key – Uniquely identifies each seller and inventory record.
Foreign Key – Connects inventory records with sellers.
NOT NULL – Ensures required fields contain values.
AUTO_INCREMENT – Automatically generates unique IDs.
 How to Run
Install MySQL Server and MySQL Workbench.
Open MySQL Workbench.
Create a new SQL query.
Copy the project SQL code into the editor.
Execute the complete script.
Select the inventory_db database.
Run the SELECT queries to view the results.
USE inventory_db;

SELECT * FROM seller;
SELECT * FROM inventory;
Safe Update Mode

If MySQL Workbench displays Error Code 1175 while updating a record, use the primary key in the WHERE condition.

Example:

UPDATE inventory
SET quantity = 60
WHERE inventory_id = 8;

This avoids Safe Update Mode errors because inventory_id is a key column.

 Project Structure
Inventory-Management-System/
│
├── inventory.sql
└── README.md
Future Enhancements

The project can be extended with:

Customer management
Purchase and sales tracking
Low-stock alerts
Supplier management
Product categories
Automatic stock updates
User authentication
Inventory reports and dashboards
  About:
Project Type:
Database Management System (DBMS) Project
Domain:
Inventory Management
