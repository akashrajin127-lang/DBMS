# E-Commerce Customer Database – SQL

## 📌 Project Overview

This project focuses on designing and implementing a **relational database for an e-commerce platform using MySQL**. The initial module focuses on customer registration and profile management, with the database designed to support future Products, Orders, and Payments modules. 

## 🎯 Objectives

* Analyze e-commerce business requirements.
* Identify important entities such as Customer, Product, Order, Payment, Seller, and Review.
* Design the Customer table.
* Create the database and table using MySQL.
* Apply SQL constraints.
* Insert customer records.
* Perform CRUD operations.

## 🛠️ Technologies Used

* **MySQL**
* **SQL**

## 🗄️ Database Structure

### Database

```sql
ecommerce_db
```

### Table

```sql
Customer
```

### Customer Table

| Column            | Data Type    | Constraint       |
| ----------------- | ------------ | ---------------- |
| Customer_ID       | INT          | PRIMARY KEY      |
| Customer_Name     | VARCHAR(100) | NOT NULL         |
| Email             | VARCHAR(100) | UNIQUE, NOT NULL |
| Phone             | VARCHAR(15)  | UNIQUE           |
| Address           | VARCHAR(200) | —                |
| City              | VARCHAR(50)  | —                |
| Registration_Date | DATE         | NOT NULL         |

The table structure and constraints are defined in the SQL script. 

## 🔐 Constraints

* **PRIMARY KEY** – Ensures each customer has a unique ID.
* **NOT NULL** – Ensures essential fields cannot be empty.
* **UNIQUE** – Prevents duplicate email addresses and phone numbers.

These constraints support data integrity and prevent duplicate customer records. 

## 📥 Data Insertion

The project inserts customer records with IDs **101 to 105**.

```sql
INSERT INTO Customer
VALUES
(101, 'Akash Raj', 'akash@gmail.com', '9876543210',
 '12 Main Road', 'Thoothukudi', '2025-01-10'),

(102, 'Aathi', 'aathi@gmail.com', '9876543211',
 '25 Gandhi Street', 'Madurai', '2025-02-15'),

(103, 'chakravarthy', 'chakravarthy@gmail.com', '9876543212',
 '10 Anna Nagar', 'Thoothukudi', '2025-03-20'),

(104, 'samuvel', 'samuvel@gmail.com', '9876543213',
 '45 Park Road', 'Thoothukudi', '2025-04-05'),

(105, 'pradeep', 'pradeep@gmail.com', '9876543214',
 '78 Lake View', 'Thoothukudi', '2025-05-12');
```



## 🔄 CRUD Operations

### Create

Add a new customer:

```sql
INSERT INTO Customer
VALUES
(106, 'Karthik', 'karthik@gmail.com', '9876543215',
 '20 Beach Road', 'Chennai', '2025-06-01');
```

### Read

Display all customers:

```sql
SELECT * FROM Customer;
```

### Update

Update customer information:

```sql
UPDATE Customer
SET City = 'Thoothukudi'
WHERE Customer_ID = 102;
```

### Delete

Delete a customer:

```sql
DELETE FROM Customer
WHERE Customer_ID = 105;
```

The provided SQL script demonstrates `SELECT`, `UPDATE`, and `DELETE` operations. 

## 📊 SQL Query for Customer Distribution

To find the number of customers in each city:

```sql
SELECT City, COUNT(*) AS Customer_Count
FROM Customer
GROUP BY City;
```

This query can be used as the data source for a **bar chart**, but the project itself uses **SQL only**.

## 🚀 Future Scope

The database can later be expanded with:

* Product management
* Seller management
* Order management
* Payment management
* Review management
* Relationships between customers and orders

The requirements document identifies these as future parts of the e-commerce database. 

## 👨‍💻 Author

**Akash Raj T**

**Project:** E-Commerce Customer Database
**Technology:** MySQL / SQL
