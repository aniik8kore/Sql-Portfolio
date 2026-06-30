<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=28&pause=1000&color=00B4D8&center=true&vCenter=true&width=700&lines=SQL+Portfolio+%E2%80%94+Aniket+Kore;Turning+Raw+Data+into+Business+Decisions;Built+with+PostgreSQL+%C2%B7+pgAdmin;5+Projects+%7C+Growing+Daily+%F0%9F%9A%80" alt="Typing SVG" />

<br/>

![SQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-00B4D8?style=for-the-badge)
![Projects](https://img.shields.io/badge/Projects-5%2B-blueviolet?style=for-the-badge)

> *"Data is just stories waiting to be told."*

</div>

---

## 👋 About

A collection of **real-world SQL projects** built while mastering PostgreSQL. Each project tackles a different business problem with increasing complexity — from tracking student performance to analyzing e-commerce revenue to dissecting HR attrition. Every query is written from scratch. No shortcuts.

---

## 📂 Projects at a Glance

| # | Project | Business Problem | Difficulty |
|---|---------|-----------------|------------|
| 01 | [🎓 Student Grades Tracker](#project-1) | Track & analyze academic performance across subjects | ⭐ Beginner |
| 02 | [🛒 E-Commerce Sales Analysis](#project-2) | Revenue trends, top products & customer behaviour | ⭐⭐ Intermediate |
| 03 | [👥 HR Employee Analysis](#project-3) | Workforce insights, attrition patterns & dept. headcount | ⭐⭐ Intermediate |
| 04 | [🏦 Bank Transaction Analysis](#project-4) | Transaction patterns, fraud signals & customer segmentation | ⭐⭐⭐ Advanced |
| 05 | [📊 Data Cleaning & Analysis](#project-5) | Real-world messy data cleaning, standardization & insights | ⭐⭐⭐ Advanced |

> More projects dropping soon — follow to stay updated.

---

## 🛠️ Tools & Stack

```
Database    →  PostgreSQL
Interface   →  pgAdmin · psql (CLI)
Concepts    →  Joins · Aggregations · Window Functions · CTEs
               Subqueries · String Functions · Date Functions
               RANK · DENSE_RANK · Set Operations
```

---

## 📊 SQL Concepts Covered

| Category | Concepts |
|----------|----------|
| 🔗 Joins | `INNER JOIN` `LEFT JOIN` `RIGHT JOIN` `FULL JOIN` `SELF JOIN` |
| 📦 Aggregations | `SUM` `AVG` `COUNT` `MIN` `MAX` `GROUP BY` `HAVING` |
| 🪟 Window Functions | `ROW_NUMBER()` `RANK()` `DENSE_RANK()` `LAG()` `LEAD()` |
| 🧱 CTEs | `WITH` clauses · Recursive CTEs |
| 🔍 Subqueries | Correlated · Nested · Scalar |
| 📅 Date & String | `DATE_TRUNC` `EXTRACT` `TO_CHAR` `CONCAT` `TRIM` |
| ➕ Set Operations | `UNION` `UNION ALL` `INTERSECT` `EXCEPT` |

---

## 📈 Learning Path

```
✅ Basics & Filtering
✅ Joins & Aggregations
✅ Subqueries
✅ Window Functions & CTEs
✅ String & Date Functions
✅ Set Operations
✅ Advanced Optimisation & Indexing
🔄 Real-world Capstone Project (in progress)
```

---

## 📂 Project Details

<a id="project-1"></a>
### 🎓 Project 1 — Student Grades Tracker

| | |
|:---|:---|
| **Business Problem** | Track and analyze academic performance across subjects |
| **Key Concepts** | `JOIN` `GROUP BY` `AVG` `COUNT` `Subquery` `ORDER BY` `LIMIT` |
| **Difficulty** | ⭐ Beginner |
| **Tables** | `students` (id, name, age, city) · `grades` (id, student_id, subject, marks) |
| **Key Insight** | Ritika Bhosale scored the highest overall average of **92.00** |

**Sample Queries:**

| # | Question | Query Snippet |
|---|----------|---------------|
| Q1 | All students with subject-wise marks | `JOIN students ON grades.student_id` |
| Q2 | Average marks per student (highest to lowest) | `GROUP BY name` · `ORDER BY AVG(marks) DESC` |
| Q3 | Students who scored above 75 in any subject | `WHERE marks > 75` |
| Q4 | Student with the highest overall average | `ORDER BY avg DESC LIMIT 1` |
| Q5 | Count of subjects each student appeared in | `COUNT(subject)` |
| Q6 | Students from Kolhapur with marks above overall average | `WHERE city = 'Kolhapur' AND marks > (SELECT AVG(marks) FROM grades)` |

---

<a id="project-2"></a>
### 🛒 Project 2 — E-Commerce Sales Analysis

| | |
|:---|:---|
| **Business Problem** | Revenue trends, top products & customer behaviour |
| **Key Concepts** | `HAVING` `LEFT JOIN` `DATE_TRUNC` `RANK()` `SUM` `GROUP BY` |
| **Difficulty** | ⭐⭐ Intermediate |
| **Tables** | `customers` (id, name, city, signup_date) · `orders` (id, customer_id, product, amount, order_date) |
| **Key Insight** | **Laptop** is the best-selling product with ₹2,90,000 in total revenue |

**Sample Queries:**

| # | Question | Query Snippet |
|---|----------|---------------|
| Q1 | All customers with their orders | `INNER JOIN customers ON orders.customer_id` |
| Q2 | Total revenue per customer (highest to lowest) | `SUM(amount)` · `GROUP BY name` · `ORDER BY total DESC` |
| Q3 | Customers who spent more than ₹50,000 total | `HAVING SUM(amount) > 50000` |
| Q4 | Best selling product by total revenue | `GROUP BY product` · `ORDER BY SUM(amount) DESC LIMIT 1` |
| Q5 | Monthly revenue trend | `DATE_TRUNC('month', order_date)` |
| Q6 | Top 3 customers by total spending | `ORDER BY SUM(amount) DESC LIMIT 3` |
| Q7 | Customers who never placed an order | `LEFT JOIN` · `WHERE product IS NULL` |
| Q8 | Rank customers by total spending | `RANK() OVER (ORDER BY SUM(amount) DESC)` |

---

<a id="project-3"></a>
### 👥 Project 3 — HR Employee Analysis

| | |
|:---|:---|
| **Business Problem** | Workforce insights, attrition patterns & department headcount |
| **Key Concepts** | `Window Functions` `CTEs` `DENSE_RANK` `Aggregations` `CASE` |
| **Difficulty** | ⭐⭐ Intermediate |
| **Tables** | `employees` (id, name, dept, salary, hire_date, status) · `departments` (id, dept_name, location) |
| **Key Insight** | *[Add your top insight here after running the queries]* |

**Sample Queries:**

| # | Question | Query Snippet |
|---|----------|---------------|
| Q1 | Total employees per department | `COUNT(*)` · `GROUP BY dept_name` |
| Q2 | Average salary by department | `AVG(salary)` · `GROUP BY dept` |
| Q3 | Employees ranked by salary within each department | `DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC)` |
| Q4 | Attrition rate by department | `CASE WHEN status = 'Left' THEN 1 ELSE 0 END` · `AVG()` |
| Q5 | CTE: employees with above-average salary | `WITH avg_sal AS (SELECT AVG(salary) FROM employees)` |
| Q6 | Tenure in years for each employee | `EXTRACT(YEAR FROM AGE(hire_date))` |

---

<a id="project-4"></a>
### 🏦 Project 4 — Bank Transaction Analysis

| | |
|:---|:---|
| **Business Problem** | Transaction patterns, fraud signals & customer segmentation |
| **Key Concepts** | `Window Functions` `CTEs` `CASE` `Self JOIN` `Aggregations` `Date Functions` |
| **Difficulty** | ⭐⭐⭐ Advanced |
| **Tables** | `accounts` (id, customer_id, type, balance, opened_date) · `transactions` (id, account_id, amount, type, timestamp) · `customers` (id, name, city, risk_score) |
| **Key Insight** | *[Add your top insight here after running the queries]* |

**Sample Queries:**

| # | Question | Query Snippet |
|---|----------|---------------|
| Q1 | Total transaction volume by account type | `SUM(amount)` · `GROUP BY type` |
| Q2 | Daily transaction trend | `DATE_TRUNC('day', timestamp)` · `SUM(amount)` |
| Q3 | Flag suspicious transactions (amount > 3× avg) | `WITH avg_txn AS (...)` · `CASE WHEN amount > 3 * avg THEN 'Flagged' END` |
| Q4 | Running balance per account | `SUM(amount) OVER (PARTITION BY account_id ORDER BY timestamp)` |
| Q5 | Customers with multiple account types | `Self JOIN` · `COUNT(DISTINCT type)` |
| Q6 | Risk segmentation by transaction behaviour | `NTILE(4) OVER (ORDER BY total_amount)` |

---

<a id="project-5"></a>
### 📊 Project 5 — Data Cleaning & Analysis

| | |
|:---|:---|
| **Business Problem** | Clean, standardize and extract insights from messy real-world datasets |
| **Key Concepts** | `TRIM` `COALESCE` `CASE` `REGEXP_REPLACE` `DISTINCT` `UPDATE` `DELETE` `Aggregations` |
| **Difficulty** | ⭐⭐⭐ Advanced |
| **Tables** | `raw_sales` (id, product_name, price, quantity, order_date, customer_name, region) · `cleaned_sales` (post-cleanup version) |
| **Key Insight** | *[Add your top insight here after running the queries]* |

**Sample Queries:**

| # | Question | Query Snippet |
|---|----------|---------------|
| Q1 | Standardize product names (trim, lowercase, remove special chars) | `TRIM(LOWER(REGEXP_REPLACE(product_name, '[^a-zA-Z0-9 ]', '')))` |
| Q2 | Handle missing values in price & quantity | `COALESCE(price, 0)` · `COALESCE(quantity, 1)` |
| Q3 | Remove duplicate orders | `DELETE FROM raw_sales WHERE id NOT IN (SELECT MIN(id) FROM raw_sales GROUP BY product_name, order_date, customer_name)` |
| Q4 | Convert inconsistent date formats to standard DATE | `TO_DATE(order_date, 'YYYY-MM-DD')` |
| Q5 | Flag outliers (price > 3× median) | `PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price)` |
| Q6 | Cleaned dataset summary by region | `GROUP BY region` · `SUM(price * quantity)` · `COUNT(DISTINCT customer_name)` |

---

## 🤝 Connect

<div align="left">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Aniket%20Kore-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/aniket-kore-5591b4246/)
[![GitHub Profile](https://img.shields.io/badge/GitHub-aniik8kore-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/aniik8kore)
[![Email](https://img.shields.io/badge/Email-aniketkore2680-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:aniketkore2680@gmail.com)

</div>

---

<div align="center">
  <sub>Built with 🔵 PostgreSQL · ☕ Coffee · 📚 Consistency · 🚀 One project at a time</sub>
</div>
