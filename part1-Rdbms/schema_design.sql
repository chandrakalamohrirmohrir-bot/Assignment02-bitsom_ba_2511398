USE orders;

DROP TABLE IF EXISTS orders_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS sales_representatives;

#customers TABLE 
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR (100) NOT NULL,
    city VARCHAR (50) 
);

 #products TABLE 
 CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name varchar(100) NOT NULL,
    price Decimal (10,2)
 );

#sales representatives
 CREATE TABLE sales_representatives(
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR (100)
 );

#orders table
 CREATE Table orders (
    orders_id INT PRIMARY KEY,
    customer_id INT,
    rep_id INT,
    orders_date DATE,
    Foreign Key (customer_id) REFERENCES customers(customer_id),
    Foreign Key (rep_id) REFERENCES sales_representatives(rep_id)
 );

#order items
 CREATE Table orders_items (
    orders_items_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(orders_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
 );