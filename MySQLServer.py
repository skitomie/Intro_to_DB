# import mysql.connector
# from mysql.connector import Error

# try:
#     myDB = mysql.connector.connect(
#         host = "localhost",
#         username = "root",
#         password = "Ola@dapo1055",
# );

#     if myDB.is_connected():
#         print("Connected to MySQL database")
#     myCursor = myDB.cursor();

#     myCursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;");

#     print("Database 'alx_book_store' created successfully!");


# except mysql.connector.Error:
#     print("Connection Failed")

# myCursor.close()
# myDB.close()

# print("Database Connection closed")

import mysql.connector

myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
useDB = mycursor.execute("SELECT
        COLUMN_NAME, 
        COLUMN_TYPE, 
        IS_NULLABLE, 
        COLUMN_DEFAULT, 
        COLUMN_KEY, 
        EXTRA 

        FROM 
        INFORMATION_SCHEMA.COLUMNS
        WHERE 
        TABLE_NAME = 'Books' AND TABLE_SCHEMA = 'alx_book_store';")