import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor() mycursor.execute(
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
    customer_id FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    book_id FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)
);
mycursor.close();
myDB.close()