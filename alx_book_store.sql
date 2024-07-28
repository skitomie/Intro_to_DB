CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id FOREIGN KEY,
    price FLOAT,
    publication_date DATE
);
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id FOREIGN KEY,
    order_date DATE
);
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id FOREIGN KEY,
    book_id FOREIGN KEY,
    quantity FLOAT
);