# SQL Portfolio — Project 4: Bank Transaction Analysis

## Overview
An industry-level SQL project simulating real banking analytics using PostgreSQL.
Covers CTEs, window functions, FILTER clauses, running balances, and fraud-pattern detection.

---

## Schema

**Table 1: accounts**
| Column | Type | Description |
|---|---|---|
| account_id | SERIAL PK | Unique account ID |
| customer_name | VARCHAR | Customer name |
| account_type | VARCHAR | Savings / Current |
| city | VARCHAR | City |
| created_date | DATE | Account opening date |

**Table 2: transactions**
| Column | Type | Description |
|---|---|---|
| transaction_id | SERIAL PK | Unique transaction ID |
| account_id | INT FK | References accounts |
| transaction_type | VARCHAR | Credit / Debit |
| amount | DECIMAL | Transaction amount (₹) |
| transaction_date | DATE | Date of transaction |

---

## Business Questions & Queries

### Q1 — Total credits and debits per account
### Q2 — Net balance per account (credits - debits)
### Q3 — Accounts with negative balance
### Q4 — Monthly transaction volume trend
### Q5 — Top 5 accounts by total transaction amount
### Q6 — Classify accounts as Active / Inactive (active = transaction in last 6 months)
### Q7 — Running balance per account using window function
### Q8 — Accounts with suspicious activity (single transaction > ₹1,00,000)

---

## Concepts Used
- INNER JOIN across two tables
- FILTER clause for conditional aggregation
- CTEs (WITH) for modular queries
- DATE_TRUNC for time-series trends
- CASE WHEN for account classification
- Window functions: SUM() OVER (PARTITION BY ... ORDER BY ...) for running balance
- Real-world banking analytics logic

---

## Tools
- PostgreSQL
- pgAdmin / psql

## Author
**Aniket Kore** — SQL Portfolio Project 4 of 5
