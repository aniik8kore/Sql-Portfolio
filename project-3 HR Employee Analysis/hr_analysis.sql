-- ================================================
-- Project 3: HR Employee Analysis
-- Tools: PostgreSQL
-- Author: Aniket Kore
-- ================================================


-- ----------------
-- CREATE TABLES
-- ----------------

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

CREATE TABLE performance (
    performance_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    review_year INT,
    rating INT
);


-- ----------------
-- INSERT DATA
-- ----------------

INSERT INTO employees (name, department, salary, hire_date) VALUES
('Aniket Kore', 'Analytics', 75000.00, '2021-03-15'),
('Aishwarya Desai', 'Marketing', 55000.00, '2022-06-10'),
('Rohit Sharma', 'Engineering', 90000.00, '2019-01-20'),
('Priya Kulkarni', 'HR', 48000.00, '2020-07-05'),
('Amit Joshi', 'Engineering', 85000.00, '2018-11-12'),
('Sneha Pawar', 'Analytics', 72000.00, '2022-01-18'),
('Raj Mehta', 'Sales', 45000.00, '2021-09-25'),
('Pooja Shinde', 'Marketing', 62000.00, '2020-04-30'),
('Vikram Naik', 'Engineering', 95000.00, '2017-08-14'),
('Divya Rao', 'HR', 51000.00, '2023-02-28'),
('Sachin More', 'Sales', 43000.00, '2022-10-05'),
('Neha Patil', 'Analytics', 78000.00, '2019-05-22'),
('Karan Wagh', 'Engineering', 88000.00, '2020-12-01'),
('Ritika Bhosale', 'Marketing', 67000.00, '2021-07-19'),
('Arjun Sawant', 'Sales', 49000.00, '2023-03-10'),
('Meera Joshi', 'HR', 53000.00, '2022-08-15'),
('Siddharth Kadam', 'Engineering', 92000.00, '2018-06-22'),
('Tanvi Patil', 'Analytics', 69000.00, '2023-01-08'),
('Yash Gaikwad', 'Sales', 41000.00, '2021-11-30'),
('Pallavi Desai', 'Marketing', 58000.00, '2020-03-17');

INSERT INTO performance (employee_id, review_year, rating) VALUES
(1, 2022, 4), (1, 2023, 5),
(2, 2022, 3), (2, 2023, 4),
(3, 2022, 5), (3, 2023, 5),
(4, 2022, 3), (4, 2023, 3),
(5, 2022, 4), (5, 2023, 5),
(6, 2022, 4), (6, 2023, 4),
(7, 2022, 2), (7, 2023, 3),
(8, 2022, 4), (8, 2023, 4),
(9, 2022, 5), (9, 2023, 5),
(10, 2022, 3), (10, 2023, 4),
(11, 2022, 2), (11, 2023, 2),
(12, 2022, 5), (12, 2023, 4),
(13, 2022, 4), (13, 2023, 5),
(14, 2022, 3), (14, 2023, 4),
(15, 2022, 3), (15, 2023, 3),
(16, 2022, 4), (16, 2023, 4),
(17, 2022, 5), (17, 2023, 5),
(18, 2022, 3), (18, 2023, 4),
(19, 2022, 2), (19, 2023, 3),
(20, 2022, 4), (20, 2023, 3);


-- ----------------
-- QUERIES
-- ----------------

-- Q1: All employees with performance ratings
SELECT employees.name, performance.rating
FROM employees
INNER JOIN performance ON employees.employee_id = performance.employee_id;

-- Q2: Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Q3: Employees with salary between 50000 and 80000
SELECT name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 80000
ORDER BY salary DESC;

-- Q4: Categorize employees by salary
SELECT name, salary,
  CASE
    WHEN salary < 50000 THEN 'Low'
    WHEN salary BETWEEN 50000 AND 80000 THEN 'Mid'
    WHEN salary > 80000 THEN 'High'
  END AS salary_category
FROM employees
ORDER BY salary DESC;

-- Q5: Top rated employee per department
SELECT employees.name, employees.department, MAX(performance.rating) AS max_rating
FROM employees
JOIN performance ON employees.employee_id = performance.employee_id
GROUP BY employees.department, employees.name
HAVING MAX(performance.rating) = (
    SELECT MAX(p2.rating)
    FROM performance p2
    JOIN employees e2 ON p2.employee_id = e2.employee_id
    WHERE e2.department = employees.department
);

-- Q6: Employees hired after 2021
SELECT name, hire_date
FROM employees
WHERE hire_date > '2021-12-31';

-- Q7: Department with highest average rating
SELECT employees.department, AVG(performance.rating) AS avg_rating
FROM employees
JOIN performance ON employees.employee_id = performance.employee_id
GROUP BY employees.department
ORDER BY avg_rating DESC
LIMIT 1;

-- Q8: Employees with rating below overall average
SELECT employees.name, AVG(performance.rating) AS avg_rating
FROM employees
JOIN performance ON employees.employee_id = performance.employee_id
GROUP BY employees.name
HAVING AVG(performance.rating) < (SELECT AVG(rating) FROM performance);
