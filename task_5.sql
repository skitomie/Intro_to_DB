import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
sql = "(INSERT INTO customer (customer_id, customer_name, email, address) VALUES (%s,%s,%s,%s)" val = (
    "1",
    "Cole Baidoo",
    "cbaidoo @sandtech.com ",
    "123 Happiness Ave "
) mycursor.execute(sql, val) myDB.commit()