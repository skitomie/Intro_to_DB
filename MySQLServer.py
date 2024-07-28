import mysql.connector

myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
);

if myDB:
    print("Connected to MySQLServer")
else:
    print("Connection Fail")

myCursor = myDB.cursor();

myCursor.execute(
    "CREATE DATABASE IF NOT EXISTS alx_book_store;"
);

print("Database 'alx_book_store' created successfully!");

myCursor.close()
myDB.close()

print("Database Connection closed")