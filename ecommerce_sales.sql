-- ================================================
-- Project 2: E-Commerce Sales Analysis
-- Tools: PostgreSQL
-- Author: Aniket Kore
-- ================================================


-- ----------------
-- CREATE TABLES
-- ----------------

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE
);


-- ----------------
-- INSERT DATA
-- ----------------

INSERT INTO customers (name, city, signup_date) VALUES
('Aniket Kore', 'Kolhapur', '2023-01-15'),
('Aishwarya Desai', 'Sangli', '2023-02-10'),
('Rohit Sharma', 'Pune', '2023-01-20'),
('Priya Kulkarni', 'Mumbai', '2023-03-05'),
('Amit Joshi', 'Nashik', '2023-02-28'),
('Sneha Pawar', 'Kolhapur', '2023-04-12'),
('Raj Mehta', 'Aurangabad', '2023-03-18'),
('Pooja Shinde', 'Pune', '2023-05-01'),
('Vikram Naik', 'Goa', '2023-04-22'),
('Divya Rao', 'Hyderabad', '2023-06-10'),
('Sachin More', 'Kolhapur', '2023-05-15'),
('Neha Patil', 'Sangli', '2023-07-01'),
('Karan Wagh', 'Mumbai', '2023-06-20'),
('Ritika Bhosale', 'Nashik', '2023-08-05'),
('Arjun Sawant', 'Pune', '2023-07-18'),
('Meera Joshi', 'Mumbai', '2023-09-01'),
('Siddharth Kadam', 'Pune', '2023-08-22'),
('Tanvi Patil', 'Kolhapur', '2023-10-10'),
('Yash Gaikwad', 'Nashik', '2023-09-15'),   -- no orders
('Pallavi Desai', 'Sangli', '2024-01-05');   -- no orders

INSERT INTO orders (customer_id, product, amount, order_date) VALUES
(1, 'Laptop', 45000.00, '2023-02-01'),
(1, 'Mouse', 850.00, '2023-02-15'),
(1, 'Keyboard', 1200.00, '2023-03-10'),
(1, 'Monitor', 12000.00, '2023-04-05'),
(1, 'Headphones', 2500.00, '2023-06-20'),
(2, 'Smartphone', 18000.00, '2023-03-01'),
(2, 'Phone Case', 350.00, '2023-03-02'),
(2, 'Earphones', 1500.00, '2023-05-10'),
(2, 'Tablet', 22000.00, '2023-07-15'),
(2, 'Charger', 800.00, '2023-09-01'),
(3, 'Laptop', 42000.00, '2023-02-10'),
(3, 'Webcam', 2200.00, '2023-03-25'),
(3, 'USB Hub', 950.00, '2023-04-18'),
(3, 'Desk Lamp', 1100.00, '2023-06-05'),
(3, 'Chair', 8500.00, '2023-08-12'),
(4, 'Smartphone', 25000.00, '2023-04-01'),
(4, 'Smartwatch', 12000.00, '2023-05-20'),
(4, 'Bluetooth Speaker', 3500.00, '2023-06-15'),
(4, 'Laptop Bag', 1800.00, '2023-07-22'),
(4, 'Power Bank', 2200.00, '2023-09-10'),
(5, 'Monitor', 15000.00, '2023-03-15'),
(5, 'Keyboard', 1500.00, '2023-04-10'),
(5, 'Mouse', 750.00, '2023-04-11'),
(5, 'Headphones', 3200.00, '2023-06-01'),
(5, 'Webcam', 2500.00, '2023-08-20'),
(6, 'Tablet', 18000.00, '2023-05-05'),
(6, 'Stylus', 1200.00, '2023-05-06'),
(6, 'Keyboard', 2000.00, '2023-07-10'),
(6, 'Mouse', 900.00, '2023-08-15'),
(6, 'Laptop Stand', 1500.00, '2023-10-01'),
(7, 'Smartphone', 20000.00, '2023-04-20'),
(7, 'Earphones', 1800.00, '2023-05-15'),
(7, 'Charger', 700.00, '2023-06-10'),
(7, 'Phone Case', 400.00, '2023-07-05'),
(7, 'Power Bank', 1900.00, '2023-09-20'),
(8, 'Laptop', 55000.00, '2023-06-01'),
(8, 'Mouse', 1100.00, '2023-06-02'),
(8, 'Keyboard', 2500.00, '2023-07-15'),
(8, 'Monitor', 18000.00, '2023-08-10'),
(8, 'Webcam', 3000.00, '2023-10-05'),
(9, 'Smartwatch', 8000.00, '2023-05-10'),
(9, 'Bluetooth Speaker', 4500.00, '2023-06-25'),
(9, 'Headphones', 2800.00, '2023-07-30'),
(9, 'Earphones', 1200.00, '2023-09-05'),
(9, 'Charger', 900.00, '2023-10-15'),
(10, 'Tablet', 25000.00, '2023-07-01'),
(10, 'Stylus', 1500.00, '2023-07-02'),
(10, 'Keyboard', 1800.00, '2023-08-20'),
(10, 'Mouse', 850.00, '2023-09-10'),
(10, 'Laptop Bag', 2000.00, '2023-10-20'),
(11, 'Laptop', 38000.00, '2023-06-15'),
(11, 'Monitor', 14000.00, '2023-07-20'),
(11, 'Keyboard', 1300.00, '2023-08-05'),
(11, 'Mouse', 700.00, '2023-08-06'),
(11, 'Headphones', 2200.00, '2023-10-10'),
(12, 'Smartphone', 22000.00, '2023-08-01'),
(12, 'Smartwatch', 10000.00, '2023-08-20'),
(12, 'Earphones', 1600.00, '2023-09-15'),
(12, 'Charger', 850.00, '2023-10-01'),
(12, 'Phone Case', 450.00, '2023-10-20'),
(13, 'Monitor', 16000.00, '2023-07-10'),
(13, 'Webcam', 2800.00, '2023-08-01'),
(13, 'USB Hub', 1100.00, '2023-08-25'),
(13, 'Desk Lamp', 1300.00, '2023-09-20'),
(13, 'Chair', 9500.00, '2023-10-15'),
(14, 'Laptop', 60000.00, '2023-09-01'),
(14, 'Mouse', 1200.00, '2023-09-02'),
(14, 'Keyboard', 2800.00, '2023-09-15'),
(14, 'Monitor', 20000.00, '2023-10-01'),
(14, 'Headphones', 3500.00, '2023-10-20'),
(15, 'Tablet', 20000.00, '2023-08-10'),
(15, 'Stylus', 1300.00, '2023-08-11'),
(15, 'Bluetooth Speaker', 3800.00, '2023-09-05'),
(15, 'Power Bank', 2100.00, '2023-09-25'),
(15, 'Laptop Bag', 1700.00, '2023-10-18'),
(16, 'Smartphone', 28000.00, '2023-10-01'),
(16, 'Smartwatch', 15000.00, '2023-10-10'),
(16, 'Earphones', 2000.00, '2023-10-20'),
(16, 'Charger', 950.00, '2023-11-05'),
(16, 'Phone Case', 500.00, '2023-11-15'),
(17, 'Laptop', 50000.00, '2023-09-10'),
(17, 'Webcam', 2600.00, '2023-09-20'),
(17, 'USB Hub', 1000.00, '2023-10-05'),
(17, 'Desk Lamp', 1200.00, '2023-10-25'),
(17, 'Chair', 10000.00, '2023-11-10'),
(18, 'Monitor', 17000.00, '2023-11-01'),
(18, 'Keyboard', 2200.00, '2023-11-10'),
(18, 'Mouse', 950.00, '2023-11-11'),
(18, 'Headphones', 2800.00, '2023-12-01'),
(18, 'Webcam', 3200.00, '2023-12-15');


-- ----------------
-- QUERIES
-- ----------------

-- Q1: All customers with their orders
SELECT customers.name, orders.product, orders.amount
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;


-- Q2: Total revenue per customer (highest to lowest)
SELECT customers.name, SUM(orders.amount) AS total_revenue
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_revenue DESC;


-- Q3: Customers who spent more than 50000 total
SELECT customers.name, SUM(orders.amount) AS total_revenue
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING SUM(orders.amount) > 50000
ORDER BY total_revenue DESC;


-- Q4: Best selling product by total revenue
SELECT orders.product, SUM(orders.amount) AS total_revenue
FROM orders
GROUP BY orders.product
ORDER BY total_revenue DESC
LIMIT 1;


-- Q5: Monthly revenue trend
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(amount) AS revenue
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;


-- Q6: Top 3 customers by total spending
SELECT customers.name, SUM(orders.amount) AS total_revenue
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_revenue DESC
LIMIT 3;


-- Q7: Customers who never placed an order (LEFT JOIN)
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.product IS NULL;


-- Q8: Rank customers by total spending using window function
SELECT customers.name,
       SUM(orders.amount) AS total_revenue,
       RANK() OVER (ORDER BY SUM(orders.amount) DESC) AS rank
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name;
