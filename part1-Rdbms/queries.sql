#Q1: customers from mumbai with total order value 
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_value
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN orders_items oi ON o.orders_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

#Q2: Top 3 products by quantity 
SELECT p.product_name, sum(oi.quantity) AS total_qty
FROM products p 
JOIN orders_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_qty DESC 
LIMIT 3;

#Q3:- Sales reps and number of customers
SELECT sr.rep_name, COUNT(DISTINCT o.customer_id) AS total_customers
FROM sales_representatives sr 
JOIN orders o ON sr.rep_id = o.rep_id
GROUP BY sr.rep_name;

#Q4: Orders above 10000
SELECT o.orders_id, SUM(p.price * oi.quantity) AS total_values
FROM orders o 
JOIN orders_items oi ON o.orders_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.orders_id
HAVING total_values > 10000
ORDER BY total_values DESC;

#Q5: Products never ordered 
SELECT p.Product_name
FROM Products p
LEFT JOIN orders_Items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;