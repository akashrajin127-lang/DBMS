# Product and Category Management System

## 📌 Project Description

The **Product and Category Management System** is a simple database project developed using **MySQL**. It is used to store and manage product information along with their respective categories.

The system allows users to:

* Create categories
* Add products
* View product details
* Update product prices
* Delete products
* Analyze products category-wise

## 🛠️ Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Tool:** MySQL Workbench

## 📂 Database Structure

The project contains two main tables:

### 1. Categories Table

| Column | Data Type   | Description   |
| ------ | ----------- | ------------- |
| id     | INT         | Primary Key   |
| name   | VARCHAR(50) | Category Name |

### 2. Products Table

| Column      | Data Type     | Description   |
| ----------- | ------------- | ------------- |
| id          | INT           | Primary Key   |
| name        | VARCHAR(100)  | Product Name  |
| price       | DECIMAL(10,2) | Product Price |
| category_id | INT           | Foreign Key   |

### Relationship

The `category_id` in the **products** table references the `id` in the **categories** table.

```text
Categories
    |
    | 1
    |
    |------< Many
           |
        Products
```

One category can contain multiple products.

## 📊 Sample Categories

* Electronics
* Furniture
* Stationery
* Accessories

## 📦 Sample Products

| Product  |   Price | Category    |
| -------- | ------: | ----------- |
| Laptop   | ₹60,000 | Electronics |
| Mobile   | ₹20,000 | Electronics |
| Tablet   | ₹15,000 | Electronics |
| Chair    |  ₹3,000 | Furniture   |
| Table    |  ₹5,000 | Furniture   |
| Notebook |    ₹100 | Stationery  |
| Pen      |     ₹50 | Stationery  |
| Bag      |  ₹1,200 | Accessories |
| Watch    |  ₹2,500 | Accessories |

## 🔧 CRUD Operations

The system supports all basic CRUD operations.

### Create

Add a new product:

```sql
INSERT INTO products (name, price, category_id)
VALUES ('Keyboard', 1200, 1);
```

### Read

Display all products:

```sql
SELECT * FROM products;
```

### Update

Update a product price:

```sql
UPDATE products
SET price = 1500
WHERE id = 10;
```

### Delete

Delete a product:

```sql
DELETE FROM products
WHERE id = 10;
```

## 📈 Category-wise Analysis

The system provides useful product analysis such as:

### Product Count

```sql
SELECT c.name AS category,
       COUNT(p.id) AS total_products
FROM categories c
LEFT JOIN products p
ON c.id = p.category_id
GROUP BY c.id, c.name;
```

### Average Product Price

```sql
SELECT c.name AS category,
       AVG(p.price) AS average_price
FROM categories c
JOIN products p
ON c.id = p.category_id
GROUP BY c.id, c.name;
```

### Highest Product Price

```sql
SELECT c.name AS category,
       MAX(p.price) AS highest_price
FROM categories c
JOIN products p
ON c.id = p.category_id
GROUP BY c.id, c.name;
```

## ▶️ How to Run

1. Open **MySQL Workbench**.
2. Create the database using the SQL script.
3. Create the `categories` and `products` tables.
4. Insert the sample data.
5. Execute the CRUD queries.
6. Execute the category-wise analysis queries.
7. View the results in the MySQL output window.

## 🎯 Objectives

* To understand relational database design.
* To practice SQL table creation.
* To implement primary and foreign keys.
* To perform CRUD operations.
* To use `JOIN`, `COUNT`, `AVG`, and `MAX`.
* To generate category-wise product reports.

## ✅ Conclusion

The **Product and Category Management System** provides a simple way to organize products based on categories. It demonstrates important MySQL concepts such as **database creation, table relationships, CRUD operations, JOIN queries, aggregate functions, and data analysis**.
