# SQL Portfolio — Project 2: E-Commerce Sales Analysis

## Overview
An intermediate SQL project analyzing e-commerce sales data using PostgreSQL.  
Covers JOIN, GROUP BY, HAVING, LEFT JOIN, DATE_TRUNC, subqueries, and Window Functions.

---

## Schema

**Table 1: customers**
| Column | Type | Description |
|---|---|---|
| customer_id | SERIAL PK | Unique customer ID |
| name | VARCHAR | Customer name |
| city | VARCHAR | City |
| signup_date | DATE | Date of signup |

**Table 2: orders**
| Column | Type | Description |
|---|---|---|
| order_id | SERIAL PK | Unique order ID |
| customer_id | INT FK | References customers |
| product | VARCHAR | Product name |
| amount | DECIMAL | Order amount (₹) |
| order_date | DATE | Date of order |

---

## Business Questions & Queries

### Q1 — All customers with their orders
```sql
SELECT customers.name, orders.product, orders.amount
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;
```

### Q2 — Total revenue per customer (highest to lowest)
```sql
SELECT customers.name, SUM(orders.amount) AS total_revenue
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_revenue DESC;
```

### Q3 — Customers who spent more than ₹50,000 total
```sql
SELECT customers.name, SUM(orders.amount) AS total_revenue
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
HAVING SUM(orders.amount) > 50000
ORDER BY total_revenue DESC;
```
**Result:** 6 customers — led by Ritika Bhosale (₹87,500)

### Q4 — Best selling product by total revenue
```sql
SELECT orders.product, SUM(orders.amount) AS total_revenue
FROM orders
GROUP BY orders.product
ORDER BY total_revenue DESC
LIMIT 1;
```
**Result:** Laptop — ₹2,90,000

### Q5 — Monthly revenue trend
```sql
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(amount) AS revenue
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;
```

### Q6 — Top 3 customers by total spending
```sql
SELECT customers.name, SUM(orders.amount) AS total_revenue
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_revenue DESC
LIMIT 3;
```
**Result:** Ritika Bhosale, Pooja Shinde, Siddharth Kadam

### Q7 — Customers who never placed an order
```sql
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.product IS NULL;
```
**Result:** Yash Gaikwad, Pallavi Desai

### Q8 — Rank customers by total spending (Window Function)
```sql
SELECT customers.name,
       SUM(orders.amount) AS total_revenue,
       RANK() OVER (ORDER BY SUM(orders.amount) DESC) AS rank
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name;
```

---

## Concepts Used
- INNER JOIN and LEFT JOIN
- GROUP BY with SUM aggregation
- HAVING for post-aggregation filtering
- DATE_TRUNC for monthly grouping
- RANK() window function
- ORDER BY + LIMIT for top-N queries
- NULL filtering for missing data

---

## Tools
- PostgreSQL
- pgAdmin / psql

---

## Author
**Aniket Kore** — SQL Portfolio Project 2 of 5
