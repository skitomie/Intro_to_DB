import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
useDB = mycursor.execute(
    """
    INSERT INTO Customer(customerid, customer_name, email, address)
    VALUES(1, " Cole Baidoo ", " cbaidoo @sandtech.com ", " 123 Happiness Ave ")
    
    """
)