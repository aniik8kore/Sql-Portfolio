# SQL Portfolio — Project 3: HR Employee Analysis

## Overview
An intermediate SQL project analyzing HR employee and performance data using PostgreSQL.
Covers JOIN, GROUP BY, HAVING, BETWEEN, CASE WHEN, subqueries, and date filtering.

---

## Schema

**Table 1: employees**
| Column | Type | Description |
|---|---|---|
| employee_id | SERIAL PK | Unique employee ID |
| name | VARCHAR | Employee name |
| department | VARCHAR | Department name |
| salary | DECIMAL | Monthly salary (₹) |
| hire_date | DATE | Date of joining |

**Table 2: performance**
| Column | Type | Description |
|---|---|---|
| performance_id | SERIAL PK | Unique record ID |
| employee_id | INT FK | References employees |
| review_year | INT | Year of review |
| rating | INT | Rating (1 to 5) |

---

## Business Questions & Queries

### Q1 — All employees with their performance ratings
### Q2 — Average salary per department
### Q3 — Employees with salary between 50,000 and 80,000
### Q4 — Categorize employees as Low / Mid / High salary using CASE WHEN
### Q5 — Top rated employee per department
### Q6 — Employees hired after 2021
### Q7 — Department with highest average rating
### Q8 — Employees with rating below overall average

---

## Concepts Used
- INNER JOIN across two tables
- GROUP BY with AVG, MAX
- HAVING for post-aggregation filtering
- BETWEEN for range filtering
- CASE WHEN for conditional categorization
- Subqueries for dynamic comparisons
- Date filtering with WHERE

---

## Tools
- PostgreSQL
- pgAdmin / psql

## Author
**Aniket Kore** — SQL Portfolio Project 3 of 5
