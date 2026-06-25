-- ================================================
-- Project 1: Student Grades Tracker
-- Tools: PostgreSQL
-- Author: Aniket Patil
-- ================================================


-- ----------------
-- CREATE TABLES
-- ----------------

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    subject VARCHAR(50),
    marks INT
);


-- ----------------
-- INSERT DATA
-- ----------------

INSERT INTO students (name, age, city) VALUES
('Aniket Patil', 20, 'Kolhapur'),
('Aishwarya Desai', 20, 'Sangli'),
('Rohit Sharma', 21, 'Pune'),
('Priya Kulkarni', 22, 'Mumbai'),
('Amit Joshi', 21, 'Nashik'),
('Sneha Pawar', 20, 'Kolhapur'),
('Raj Mehta', 23, 'Aurangabad'),
('Pooja Shinde', 21, 'Pune'),
('Vikram Naik', 22, 'Goa'),
('Divya Rao', 20, 'Hyderabad'),
('Sachin More', 21, 'Kolhapur'),
('Neha Patil', 22, 'Sangli'),
('Karan Wagh', 23, 'Mumbai'),
('Ritika Bhosale', 20, 'Nashik'),
('Arjun Sawant', 21, 'Pune');

INSERT INTO grades (student_id, subject, marks) VALUES
(1, 'Maths', 88), (1, 'English', 76), (1, 'Science', 91),
(2, 'Maths', 72), (2, 'English', 85), (2, 'Science', 69),
(3, 'Maths', 55), (3, 'English', 60), (3, 'Science', 70),
(4, 'Maths', 92), (4, 'English', 88), (4, 'Science', 95),
(5, 'Maths', 45), (5, 'English', 50), (5, 'Science', 48),
(6, 'Maths', 78), (6, 'English', 82), (6, 'Science', 80),
(7, 'Maths', 65), (7, 'English', 71), (7, 'Science', 68),
(8, 'Maths', 90), (8, 'English', 93), (8, 'Science', 87),
(9, 'Maths', 55), (9, 'English', 62), (9, 'Science', 58),
(10, 'Maths', 83), (10, 'English', 79), (10, 'Science', 86),
(11, 'Maths', 70), (11, 'English', 74), (11, 'Science', 77),
(12, 'Maths', 88), (12, 'English', 91), (12, 'Science', 85),
(13, 'Maths', 40), (13, 'English', 55), (13, 'Science', 48),
(14, 'Maths', 95), (14, 'English', 89), (14, 'Science', 92),
(15, 'Maths', 60), (15, 'English', 65), (15, 'Science', 63);


-- ----------------
-- QUERIES
-- ----------------

-- Q1: All students with subject-wise marks
SELECT students.name, grades.subject, grades.marks
FROM students
JOIN grades ON students.student_id = grades.student_id;


-- Q2: Average marks per student (highest to lowest)
SELECT students.name, AVG(grades.marks) AS avg_marks
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.name
ORDER BY avg_marks DESC;


-- Q3: Students who scored above 75 in any subject
SELECT students.name, grades.marks
FROM students
JOIN grades ON students.student_id = grades.student_id
WHERE grades.marks > 75;


-- Q4: Student with the highest overall average
SELECT students.name, AVG(grades.marks) AS avg_marks
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.name
ORDER BY avg_marks DESC
LIMIT 1;


-- Q5: Count of subjects each student appeared in
SELECT students.name, COUNT(grades.subject) AS total_subjects
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.name;


-- Q6: Students from Kolhapur with marks above overall average
SELECT students.name, grades.marks
FROM students
JOIN grades ON students.student_id = grades.student_id
WHERE students.city = 'Kolhapur'
AND grades.marks > (SELECT AVG(marks) FROM grades);
