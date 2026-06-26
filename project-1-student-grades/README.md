# SQL Portfolio — Project 1: Student Grades Tracker

## Overview
A beginner SQL project analyzing student performance data using PostgreSQL.  
Covers JOIN, GROUP BY, AVG, COUNT, WHERE, subqueries, and ORDER BY.

---

## Schema

**Table 1: students**
| Column | Type | Description |
|---|---|---|
| student_id | SERIAL PK | Unique student ID |
| name | VARCHAR | Student name |
| age | INT | Age |
| city | VARCHAR | City |

**Table 2: grades**
| Column | Type | Description |
|---|---|---|
| grade_id | SERIAL PK | Unique grade ID |
| student_id | INT FK | References students |
| subject | VARCHAR | Subject name |
| marks | INT | Marks scored |

---

## Business Questions & Queries

### Q1 — All students with subject-wise marks
```sql
SELECT students.name, grades.subject, grades.marks
FROM students
JOIN grades ON students.student_id = grades.student_id;
```

### Q2 — Average marks per student (highest to lowest)
```sql
SELECT students.name, AVG(grades.marks) AS avg_marks
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.name
ORDER BY avg_marks DESC;
```

### Q3 — Students who scored above 75 in any subject
```sql
SELECT students.name, grades.marks
FROM students
JOIN grades ON students.student_id = grades.student_id
WHERE grades.marks > 75;
```

### Q4 — Student with the highest overall average
```sql
SELECT students.name, AVG(grades.marks) AS avg_marks
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.name
ORDER BY avg_marks DESC
LIMIT 1;
```
**Result:** Ritika Bhosale — 92.00

### Q5 — Count of subjects each student appeared in
```sql
SELECT students.name, COUNT(grades.subject) AS total_subjects
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.name;
```

### Q6 — Students from Kolhapur with marks above overall average
```sql
SELECT students.name, grades.marks
FROM students
JOIN grades ON students.student_id = grades.student_id
WHERE students.city = 'Kolhapur'
AND grades.marks > (SELECT AVG(marks) FROM grades);
```

---

## Concepts Used
- INNER JOIN across two tables
- GROUP BY with aggregate functions (AVG, COUNT)
- WHERE clause filtering
- Subquery for dynamic average comparison
- ORDER BY + LIMIT for ranking

---

## Tools
- PostgreSQL
- pgAdmin / psql

---

## Author
**Aniket Patil** — SQL Portfolio Project 1 of 5
