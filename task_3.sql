import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
myTables = mycursor.execute(
    ("USE DATABASE alx_book_store;");
("SHOW TABLES;");
);
for tables in myTables: print(tables)