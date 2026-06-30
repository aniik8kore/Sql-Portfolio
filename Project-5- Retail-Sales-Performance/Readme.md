# SQL Portfolio — Project 5: Retail Sales Performance Dashboard

## Overview
An advanced SQL project analyzing retail sales performance using PostgreSQL.
Covers CTEs, window functions (LAG, DENSE_RANK, SUM OVER), revenue growth analysis, and ranking logic — concepts commonly tested in data analyst interviews.

---

## Schema

**Table 1: products**
| Column | Type | Description |
|---|---|---|
| product_id | SERIAL PK | Unique product ID |
| product_name | VARCHAR(100) | Product name |
| category | VARCHAR(50) | Product category |
| price | DECIMAL(10,2) | Unit price (₹) |

**Table 2: sales**
| Column | Type | Description |
|---|---|---|
| sale_id | SERIAL PK | Unique sale ID |
| product_id | INT FK | References products |
| quantity | INT | Units sold |
| sale_date | DATE | Date of sale |
| region | VARCHAR(50) | Sales region |

---

## Business Questions & Queries

### Q1 — Total revenue per product
### Q2 — Best selling category by revenue
### Q3 — Month-over-month revenue growth
### Q4 — Top 3 products per region by revenue
### Q5 — Products with no sales
### Q6 — Revenue contribution % per category
### Q7 — Cumulative revenue over time
### Q8 — Products whose sales dropped compared to previous month

---

## Concepts Used
- INNER JOIN, LEFT JOIN
- CTEs (WITH)
- Window Functions: LAG(), SUM() OVER(), DENSE_RANK()
- Revenue growth & percentage contribution logic
- Date truncation with DATE_TRUNC()

---

## Tools
- PostgreSQL
- pgAdmin / psql

## Author
**Aniket Kore** — SQL Portfolio Project 5 of 5
