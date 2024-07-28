import mysql.connector
from mysql.connector import Error

try:
    myDB = mysql.connector.connect(
        host = "localhost",
        username = "root",
        password = "Ola@dapo1055",
);

    if myDB.is_connected():
        print("Connected to MySQL database")
    myCursor = myDB.cursor();

    myCursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;");

    print("Database 'alx_book_store' created successfully!");


except mysql.connector.Error:
    print("Connection Failed")

myCursor.close()
myDB.close()

print("Database Connection closed")