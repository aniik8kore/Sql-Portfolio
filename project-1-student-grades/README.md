\# SQL Portfolio — Project 1: Student Grades Tracker



\## Overview

A beginner SQL project analyzing student performance data using PostgreSQL.

Covers JOIN, GROUP BY, AVG, COUNT, WHERE, subqueries, and ORDER BY.



\---



\## Schema



\*\*Table 1: students\*\*

| Column | Type | Description |

|---|---|---|

| student\_id | SERIAL PK | Unique student ID |

| name | VARCHAR | Student name |

| age | INT | Age |

| city | VARCHAR | City |



\*\*Table 2: grades\*\*

| Column | Type | Description |

|---|---|---|

| grade\_id | SERIAL PK | Unique grade ID |

| student\_id | INT FK | References students |

| subject | VARCHAR | Subject name |

| marks | INT | Marks scored |



\---



\## Business Questions \& Queries



\### Q1 — All students with subject-wise marks

\### Q2 — Average marks per student

\### Q3 — Students who scored above 75

\### Q4 — Student with highest average

\### Q5 — Count of subjects per student

\### Q6 — Students from Kolhapur above average marks



\---



\## Concepts Used

\- INNER JOIN, GROUP BY, AVG, COUNT

\- WHERE filtering, Subquery, ORDER BY, LIMIT



\---



\## Tools

\- PostgreSQL / pgAdmin



\## Author

\*\*Aniket Kore\*\* — SQL Portfolio Project 1 of 5

