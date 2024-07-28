import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
useDB = mycursor.execute(
    "SELECT 
        COLUMN_NAME, 
        COLUMN_TYPE, 
        IS_NULLABLE, 
        COLUMN_DEFAULT, 
        COLUMN_KEY, 
        EXTRA 
    FROM 
        INFORMATION_SCHEMA.COLUMNS
    WHERE
        TABLE_NAME = books AND TABLE_SCHEMA = alx_book_store;"
)