import mysql.connector myDB = mysql.connector.connect(
    host = "localhost",
    username = "root",
    password = "Ola@dapo1055",
    database = "alx_book_store"
);
mycursor = myDB.cursor();
sql = "(INSERT INTO customer (customer_id, customer_name, email, address) VALUES (%s,%s,%s,%s)";
val = [
    ("2", "Blessing Malik", "bmalik@sandtech.com", "124 Happiness  Ave.")
    ("3", "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness  Ave.")
    ("4", "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness  Ave.")
];
mycursor.execute(sql, val);
myDB.commit(