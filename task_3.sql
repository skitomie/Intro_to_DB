import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
useDB = mycursor.execute("USE alx_book_store;");
myTables = mycursor.execute("SHOW TABLES;");
for tables in myTables: print(tables)