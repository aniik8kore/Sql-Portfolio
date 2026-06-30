-- ================================================
-- Project 5: Retail Sales Performance Dashboard
-- Tools: PostgreSQL
-- Author: Aniket Kore
-- ================================================


-- ----------------
-- CREATE TABLES
-- ----------------

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    quantity INT,
    sale_date DATE,
    region VARCHAR(50)
);


-- ----------------
-- INSERT DATA
-- ----------------

INSERT INTO products (product_name, category, price) VALUES
('iPhone 15', 'Electronics', 79999.00),
('Samsung Galaxy S24', 'Electronics', 74999.00),
('Sony WH-1000XM5', 'Electronics', 29999.00),
('Apple MacBook Air M2', 'Electronics', 114999.00),
('Dell XPS 15', 'Electronics', 129999.00),
('Levi''s 511 Jeans', 'Clothing', 3999.00),
('Nike Air Max 270', 'Footwear', 12999.00),
('Adidas Ultraboost 22', 'Footwear', 14999.00),
('Puma RS-X', 'Footwear', 8999.00),
('H&M Oversized Hoodie', 'Clothing', 2499.00),
('Zara Slim Fit Shirt', 'Clothing', 3499.00),
('boAt Rockerz 450', 'Electronics', 1799.00),
('JBL Flip 6', 'Electronics', 12999.00),
('Prestige Induction Cooktop', 'Home Appliances', 3299.00),
('Philips Air Fryer', 'Home Appliances', 8999.00),
('Dyson V12', 'Home Appliances', 49999.00),
('Milton Water Bottle', 'Kitchen', 599.00),
('Tupperware Lunch Box', 'Kitchen', 1299.00),
('Nescafe Gold Coffee', 'Grocery', 899.00),
('Organic India Tulsi Tea', 'Grocery', 349.00),
('Amul Butter 500g', 'Grocery', 275.00),
('Parle-G Biscuits', 'Grocery', 50.00),
('Cadbury Dairy Milk', 'Grocery', 199.00),
('Surf Excel Detergent', 'Home Care', 399.00),
('Dettol Handwash', 'Home Care', 149.00),
('Himalaya Face Wash', 'Personal Care', 179.00),
('Dove Shampoo', 'Personal Care', 299.00),
('Gillette Fusion Razor', 'Personal Care', 599.00),
('Wildcraft Backpack', 'Accessories', 2999.00),
('Fastrack Watch', 'Accessories', 4999.00);

INSERT INTO sales (product_id, quantity, sale_date, region) VALUES
(1, 12, '2024-01-05', 'North'),
(1, 8, '2024-02-10', 'South'),
(1, 15, '2024-03-15', 'West'),
(1, 10, '2024-04-20', 'East'),
(1, 6, '2024-05-25', 'North'),
(2, 10, '2024-01-08', 'South'),
(2, 14, '2024-02-12', 'West'),
(2, 9, '2024-03-18', 'North'),
(2, 11, '2024-04-22', 'East'),
(2, 7, '2024-05-28', 'South'),
(3, 20, '2024-01-10', 'West'),
(3, 18, '2024-02-15', 'North'),
(3, 25, '2024-03-20', 'East'),
(3, 15, '2024-04-25', 'South'),
(3, 22, '2024-05-30', 'West'),
(4, 5, '2024-01-12', 'North'),
(4, 8, '2024-02-18', 'East'),
(4, 6, '2024-03-22', 'South'),
(4, 4, '2024-04-28', 'West'),
(4, 7, '2024-05-15', 'North'),
(5, 4, '2024-01-15', 'East'),
(5, 6, '2024-02-20', 'South'),
(5, 5, '2024-03-25', 'West'),
(5, 3, '2024-04-10', 'North'),
(5, 8, '2024-05-18', 'East'),
(6, 50, '2024-01-06', 'South'),
(6, 45, '2024-02-11', 'West'),
(6, 60, '2024-03-16', 'North'),
(6, 40, '2024-04-21', 'East'),
(6, 55, '2024-05-26', 'South'),
(7, 30, '2024-01-09', 'West'),
(7, 25, '2024-02-14', 'North'),
(7, 35, '2024-03-19', 'East'),
(7, 28, '2024-04-24', 'South'),
(7, 32, '2024-05-29', 'West'),
(8, 22, '2024-01-11', 'North'),
(8, 18, '2024-02-16', 'East'),
(8, 26, '2024-03-21', 'South'),
(8, 20, '2024-04-26', 'West'),
(8, 24, '2024-05-31', 'North'),
(9, 35, '2024-01-14', 'East'),
(9, 30, '2024-02-19', 'South'),
(9, 40, '2024-03-24', 'West'),
(9, 28, '2024-04-29', 'North'),
(9, 38, '2024-05-20', 'East'),
(10, 60, '2024-01-16', 'South'),
(10, 55, '2024-02-21', 'West'),
(10, 70, '2024-03-26', 'North'),
(10, 50, '2024-04-15', 'East'),
(10, 65, '2024-05-22', 'South'),
(11, 40, '2024-01-18', 'West'),
(11, 35, '2024-02-23', 'North'),
(11, 45, '2024-03-28', 'East'),
(11, 38, '2024-04-18', 'South'),
(11, 42, '2024-05-24', 'West'),
(12, 80, '2024-01-20', 'North'),
(12, 75, '2024-02-25', 'East'),
(12, 90, '2024-03-30', 'South'),
(12, 70, '2024-04-20', 'West'),
(12, 85, '2024-05-26', 'North'),
(13, 25, '2024-01-22', 'East'),
(13, 20, '2024-02-27', 'South'),
(13, 30, '2024-03-15', 'West'),
(13, 22, '2024-04-22', 'North'),
(13, 28, '2024-05-28', 'East'),
(14, 45, '2024-01-24', 'South'),
(14, 40, '2024-02-10', 'West'),
(14, 50, '2024-03-17', 'North'),
(14, 42, '2024-04-24', 'East'),
(14, 48, '2024-05-30', 'South'),
(15, 30, '2024-01-26', 'West'),
(15, 25, '2024-02-12', 'North'),
(15, 35, '2024-03-19', 'East'),
(15, 28, '2024-04-26', 'South'),
(15, 32, '2024-05-22', 'West'),
(16, 8, '2024-01-28', 'North'),
(16, 6, '2024-02-14', 'East'),
(16, 10, '2024-03-21', 'South'),
(16, 7, '2024-04-28', 'West'),
(16, 9, '2024-05-24', 'North'),
(17, 100, '2024-01-05', 'East'),
(17, 90, '2024-02-10', 'South'),
(17, 120, '2024-03-15', 'West'),
(17, 95, '2024-04-20', 'North'),
(17, 110, '2024-05-25', 'East'),
(18, 70, '2024-01-08', 'South'),
(18, 65, '2024-02-13', 'West'),
(18, 80, '2024-03-18', 'North'),
(18, 72, '2024-04-23', 'East'),
(18, 78, '2024-05-28', 'South'),
(19, 150, '2024-01-10', 'West'),
(19, 140, '2024-02-15', 'North'),
(19, 160, '2024-03-20', 'East'),
(19, 145, '2024-04-25', 'South'),
(19, 155, '2024-05-30', 'West'),
(20, 200, '2024-01-12', 'North'),
(20, 180, '2024-02-17', 'East'),
(20, 220, '2024-03-22', 'South'),
(20, 190, '2024-04-27', 'West'),
(20, 210, '2024-05-20', 'North'),
(21, 300, '2024-01-14', 'East'),
(21, 280, '2024-02-19', 'South'),
(21, 320, '2024-03-24', 'West'),
(21, 290, '2024-04-29', 'North'),
(21, 310, '2024-05-22', 'East'),
(22, 500, '2024-01-16', 'South'),
(22, 480, '2024-02-21', 'West'),
(22, 520, '2024-03-26', 'North'),
(22, 490, '2024-04-15', 'East'),
(22, 510, '2024-05-24', 'South'),
(23, 250, '2024-01-18', 'West'),
(23, 230, '2024-02-23', 'North'),
(23, 270, '2024-03-28', 'East'),
(23, 240, '2024-04-18', 'South'),
(23, 260, '2024-05-26', 'West'),
(24, 180, '2024-01-20', 'North'),
(24, 160, '2024-02-25', 'East'),
(24, 200, '2024-03-30', 'South'),
(24, 170, '2024-04-20', 'West'),
(24, 190, '2024-05-28', 'North'),
(25, 400, '2024-01-22', 'East'),
(25, 380, '2024-02-27', 'South'),
(25, 420, '2024-03-15', 'West'),
(25, 390, '2024-04-22', 'North'),
(25, 410, '2024-05-30', 'East'),
(26, 220, '2024-01-24', 'South'),
(26, 200, '2024-02-10', 'West'),
(26, 240, '2024-03-17', 'North'),
(26, 210, '2024-04-24', 'East'),
(26, 230, '2024-05-22', 'South'),
(27, 190, '2024-01-26', 'West'),
(27, 170, '2024-02-12', 'North'),
(27, 210, '2024-03-19', 'East'),
(27, 180, '2024-04-26', 'South'),
(27, 200, '2024-05-24', 'West'),
(28, 120, '2024-01-28', 'North'),
(28, 110, '2024-02-14', 'East'),
(28, 130, '2024-03-21', 'South'),
(28, 115, '2024-04-28', 'West'),
(28, 125, '2024-05-26', 'North'),
(29, 40, '2024-01-05', 'East'),
(29, 35, '2024-02-10', 'South'),
(29, 45, '2024-03-15', 'West'),
(29, 38, '2024-04-20', 'North'),
(29, 42, '2024-05-25', 'East'),
(30, 55, '2024-01-08', 'South'),
(30, 50, '2024-02-13', 'West'),
(30, 60, '2024-03-18', 'North'),
(30, 52, '2024-04-23', 'East'),
(30, 58, '2024-05-28', 'South');


-- ----------------
-- QUERIES
-- ----------------

-- Q1: Total revenue per product
SELECT products.product_name, SUM(products.price * sales.quantity) AS total_revenue
FROM products
JOIN sales ON products.product_id = sales.product_id
GROUP BY products.product_name
ORDER BY total_revenue DESC;

-- Q2: Best selling category by revenue
SELECT products.category, SUM(products.price * sales.quantity) AS revenue
FROM products
JOIN sales ON products.product_id = sales.product_id
GROUP BY products.category
ORDER BY revenue DESC
LIMIT 1;

-- Q3: Month-over-month revenue growth
WITH monthly_revenue AS (
  SELECT DATE_TRUNC('month', sale_date) AS month,
         SUM(products.price * sales.quantity) AS revenue
  FROM products
  JOIN sales ON products.product_id = sales.product_id
  GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT month,
       revenue,
       LAG(revenue) OVER (ORDER BY month) AS prev_month_revenue,
       ROUND(
         (revenue - LAG(revenue) OVER (ORDER BY month))
         / LAG(revenue) OVER (ORDER BY month) * 100, 2
       ) AS growth_percent
FROM monthly_revenue
ORDER BY month;

-- Q4: Top 3 products per region by revenue
SELECT product_name, region, revenue
FROM (
  SELECT products.product_name,
         sales.region,
         SUM(products.price * sales.quantity) AS revenue,
         DENSE_RANK() OVER (PARTITION BY sales.region ORDER BY SUM(products.price * sales.quantity) DESC) AS rnk
  FROM products
  JOIN sales ON products.product_id = sales.product_id
  GROUP BY sales.region, products.product_name
) ranked
WHERE rnk <= 3
ORDER BY region, rnk;

-- Q5: Products with no sales
SELECT products.product_name
FROM products
LEFT JOIN sales ON products.product_id = sales.product_id
WHERE sales.product_id IS NULL;

-- Q6: Revenue contribution % per category
WITH category_revenue AS (
  SELECT products.category,
         SUM(products.price * sales.quantity) AS revenue
  FROM products
  JOIN sales ON products.product_id = sales.product_id
  GROUP BY products.category
)
SELECT category, ROUND(revenue / SUM(revenue) OVER () * 100, 2) AS pct_of_total
FROM category_revenue;

-- Q7: Cumulative revenue over time
WITH daily_revenue AS (
  SELECT sale_date, SUM(products.price * sales.quantity) AS revenue
  FROM products
  JOIN sales ON products.product_id = sales.product_id
  GROUP BY sale_date
)
SELECT sale_date,
       revenue,
       SUM(revenue) OVER (ORDER BY sale_date) AS cumulative_revenue
FROM daily_revenue
ORDER BY sale_date;

-- Q8: Products whose sales dropped compared to previous month
WITH monthly_qty AS (
  SELECT products.product_name,
         DATE_TRUNC('month', sale_date) AS month,
         SUM(sales.quantity) AS monthly_qty
  FROM products
  JOIN sales ON products.product_id = sales.product_id
  GROUP BY products.product_name, DATE_TRUNC('month', sale_date)
),
with_prev AS (
  SELECT product_name, month, monthly_qty,
         LAG(monthly_qty) OVER (PARTITION BY product_name ORDER BY month) AS prev_month_qty
  FROM monthly_qty
)
SELECT * FROM with_prev
WHERE monthly_qty < prev_month_qty
ORDER BY product_name, month;
