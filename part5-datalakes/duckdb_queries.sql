--Q1: Customers with total number of orders
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders
FROM read_csv_auto('Assignment02-bitsom_ba_2511398/Dataset/customers.csv') c 
LEFT JOIN read_json_auto('Assignment02-bitsom_ba_2511398/Dataset/orders.json') o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

--Q2: Top 3 customer by total order value 

SELECT c.name, SUM(o.total_amount) AS total_spent
FROM read_csv_auto('Assignment02-bitsom_ba_2511398/Dataset/customers.csv') c 
JOIN read_json_auto('Assignment02-bitsom_ba_2511398/Dataset/orders.json') o 
ON c.customer_id = o.customer_id 
GROUP BY c.name 
ORDER BY total_spent DESC
LIMIT 3;

--Q3: Products purchased by customers from banglore
SELECT DISTINCT p.product_name
FROM read_csv_auto('Assignment02-bitsom_ba_2511398/dataset/customers.csv') c
JOIN read_json_auto('Assignment02-bitsom_ba_2511398/dataset/orders.json') o
ON c.customer_id = o.customer_id
WHERE c.city = 'Bangalore';

--Q4: Join all files 
SELECT c.name, o.order_date, p.product_name, o.quantity
FROM read_csv_auto('Assignment02-bitsom_ba_2511398/Dataset/customers.csv') c 
JOIN read_json_auto('Assignment02-bitsom_ba_2511398/Dataset/orders.json') o 
ON c.customer_id = o.customer_id
JOIN read_parquet('Assignment02-bitsom_ba_2511398/Dataset/products.parquet') P
ON o.product_id = p.product_id;