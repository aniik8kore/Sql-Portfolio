-- ================================================
-- Project 4: Bank Transaction Analysis
-- Tools: PostgreSQL
-- Author: Aniket Kore
-- ================================================


-- ----------------
-- CREATE TABLES
-- ----------------

CREATE TABLE accounts (
    account_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    account_type VARCHAR(20),
    city VARCHAR(50),
    created_date DATE
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES accounts(account_id),
    transaction_type VARCHAR(10),
    amount DECIMAL(10,2),
    transaction_date DATE
);


-- ----------------
-- INSERT DATA
-- ----------------

INSERT INTO accounts (customer_name, account_type, city, created_date) VALUES
('Aniket Kore', 'Savings', 'Kolhapur', '2020-01-15'),
('Aishwarya Desai', 'Current', 'Sangli', '2019-06-10'),
('Rohit Sharma', 'Savings', 'Pune', '2021-03-20'),
('Priya Kulkarni', 'Current', 'Mumbai', '2018-11-05'),
('Amit Joshi', 'Savings', 'Nashik', '2020-07-28'),
('Sneha Pawar', 'Current', 'Kolhapur', '2022-01-12'),
('Raj Mehta', 'Savings', 'Aurangabad', '2019-09-25'),
('Pooja Shinde', 'Current', 'Pune', '2021-05-01'),
('Vikram Naik', 'Savings', 'Goa', '2017-08-14'),
('Divya Rao', 'Current', 'Hyderabad', '2023-02-28'),
('Sachin More', 'Savings', 'Kolhapur', '2020-10-05'),
('Neha Patil', 'Current', 'Sangli', '2019-04-22'),
('Karan Wagh', 'Savings', 'Mumbai', '2021-12-01'),
('Ritika Bhosale', 'Current', 'Nashik', '2018-08-05'),
('Arjun Sawant', 'Savings', 'Pune', '2022-03-10');

INSERT INTO transactions (account_id, transaction_type, amount, transaction_date) VALUES
(1, 'Credit', 50000.00, '2024-01-05'),
(1, 'Debit', 15000.00, '2024-01-20'),
(1, 'Credit', 30000.00, '2024-02-10'),
(1, 'Debit', 8000.00, '2024-02-25'),
(1, 'Credit', 20000.00, '2024-03-15'),
(2, 'Credit', 150000.00, '2024-01-08'),
(2, 'Debit', 80000.00, '2024-01-15'),
(2, 'Credit', 200000.00, '2024-02-01'),
(2, 'Debit', 120000.00, '2024-02-20'),
(2, 'Credit', 90000.00, '2024-03-10'),
(3, 'Credit', 45000.00, '2024-01-12'),
(3, 'Debit', 20000.00, '2024-01-28'),
(3, 'Credit', 35000.00, '2024-02-15'),
(3, 'Debit', 10000.00, '2024-03-01'),
(3, 'Credit', 25000.00, '2024-03-20'),
(4, 'Credit', 500000.00, '2024-01-03'),
(4, 'Debit', 300000.00, '2024-01-18'),
(4, 'Credit', 250000.00, '2024-02-05'),
(4, 'Debit', 180000.00, '2024-02-22'),
(4, 'Credit', 150000.00, '2024-03-12'),
(5, 'Credit', 40000.00, '2024-01-10'),
(5, 'Debit', 25000.00, '2024-01-25'),
(5, 'Credit', 30000.00, '2024-02-08'),
(5, 'Debit', 12000.00, '2024-02-28'),
(5, 'Credit', 20000.00, '2024-03-18'),
(6, 'Credit', 75000.00, '2024-01-06'),
(6, 'Debit', 40000.00, '2024-01-22'),
(6, 'Credit', 60000.00, '2024-02-12'),
(6, 'Debit', 35000.00, '2024-03-05'),
(6, 'Credit', 45000.00, '2024-03-25'),
(7, 'Credit', 30000.00, '2023-06-10'),
(7, 'Debit', 18000.00, '2023-06-25'),
(7, 'Credit', 25000.00, '2023-07-15'),
(7, 'Debit', 10000.00, '2023-08-01'),
(7, 'Credit', 15000.00, '2023-08-20'),
(8, 'Credit', 90000.00, '2024-01-09'),
(8, 'Debit', 50000.00, '2024-01-24'),
(8, 'Credit', 70000.00, '2024-02-14'),
(8, 'Debit', 30000.00, '2024-03-02'),
(8, 'Credit', 55000.00, '2024-03-22'),
(9, 'Credit', 120000.00, '2024-01-11'),
(9, 'Debit', 70000.00, '2024-01-26'),
(9, 'Credit', 95000.00, '2024-02-16'),
(9, 'Debit', 45000.00, '2024-03-03'),
(9, 'Credit', 80000.00, '2024-03-23'),
(10, 'Credit', 55000.00, '2024-01-14'),
(10, 'Debit', 30000.00, '2024-01-29'),
(10, 'Credit', 45000.00, '2024-02-18'),
(10, 'Debit', 20000.00, '2024-03-06'),
(10, 'Credit', 35000.00, '2024-03-26'),
(11, 'Credit', 28000.00, '2023-05-10'),
(11, 'Debit', 15000.00, '2023-05-25'),
(11, 'Credit', 22000.00, '2023-06-15'),
(11, 'Debit', 8000.00, '2023-07-01'),
(11, 'Credit', 18000.00, '2023-07-20'),
(12, 'Credit', 110000.00, '2024-01-07'),
(12, 'Debit', 60000.00, '2024-01-22'),
(12, 'Credit', 85000.00, '2024-02-13'),
(12, 'Debit', 40000.00, '2024-03-04'),
(12, 'Credit', 70000.00, '2024-03-24'),
(13, 'Credit', 65000.00, '2024-01-13'),
(13, 'Debit', 35000.00, '2024-01-28'),
(13, 'Credit', 50000.00, '2024-02-17'),
(13, 'Debit', 25000.00, '2024-03-07'),
(13, 'Credit', 40000.00, '2024-03-27'),
(14, 'Credit', 300000.00, '2024-01-04'),
(14, 'Debit', 200000.00, '2024-01-19'),
(14, 'Credit', 250000.00, '2024-02-09'),
(14, 'Debit', 150000.00, '2024-02-24'),
(14, 'Credit', 180000.00, '2024-03-14'),
(15, 'Credit', 38000.00, '2024-01-16'),
(15, 'Debit', 20000.00, '2024-01-31'),
(15, 'Credit', 28000.00, '2024-02-19'),
(15, 'Debit', 12000.00, '2024-03-08'),
(15, 'Credit', 22000.00, '2024-03-28');


-- ----------------
-- QUERIES
-- ----------------

-- Q1: Total credits and debits per account
SELECT accounts.customer_name,
       SUM(amount) FILTER (WHERE transaction_type = 'Credit') AS credit_trx,
       SUM(amount) FILTER (WHERE transaction_type = 'Debit') AS debit_trx
FROM accounts
JOIN transactions ON accounts.account_id = transactions.account_id
GROUP BY accounts.customer_name;

-- Q2: Net balance per account
SELECT accounts.customer_name,
       SUM(amount) FILTER (WHERE transaction_type = 'Credit')
       - SUM(amount) FILTER (WHERE transaction_type = 'Debit') AS net_balance
FROM accounts
JOIN transactions ON accounts.account_id = transactions.account_id
GROUP BY accounts.customer_name;

-- Q3: Accounts with negative balance
WITH net_balance AS (
    SELECT accounts.customer_name,
           SUM(amount) FILTER (WHERE transaction_type = 'Credit')
           - SUM(amount) FILTER (WHERE transaction_type = 'Debit') AS net_balance
    FROM accounts
    JOIN transactions ON accounts.account_id = transactions.account_id
    GROUP BY accounts.customer_name
)
SELECT * FROM net_balance WHERE net_balance < 0;

-- Q4: Monthly transaction volume trend
SELECT DATE_TRUNC('month', transaction_date) AS month,
       SUM(amount) AS total_volume
FROM transactions
GROUP BY DATE_TRUNC('month', transaction_date)
ORDER BY month;

-- Q5: Top 5 accounts by total transaction amount
SELECT accounts.customer_name,
       SUM(amount) AS total_amount
FROM accounts
JOIN transactions ON accounts.account_id = transactions.account_id
GROUP BY accounts.customer_name
ORDER BY total_amount DESC
LIMIT 5;

-- Q6: Classify accounts as Active / Inactive
SELECT accounts.customer_name,
       MAX(transactions.transaction_date) AS last_trx,
       CASE
         WHEN MAX(transactions.transaction_date) >= '2023-09-28' THEN 'Active'
         ELSE 'Inactive'
       END AS user_activity
FROM accounts
JOIN transactions ON accounts.account_id = transactions.account_id
GROUP BY accounts.customer_name;

-- Q7: Running balance per account using window function
SELECT accounts.customer_name,
       transactions.transaction_date,
       transactions.amount,
       transactions.transaction_type,
       SUM(
         CASE WHEN transaction_type = 'Credit' THEN amount
              ELSE -amount
         END
       ) OVER (PARTITION BY accounts.account_id ORDER BY transactions.transaction_date) AS running_balance
FROM accounts
JOIN transactions ON accounts.account_id = transactions.account_id
ORDER BY accounts.customer_name, transactions.transaction_date;

-- Q8: Accounts with suspicious activity (single transaction > 1,00,000)
SELECT accounts.customer_name,
       transactions.amount
FROM accounts
JOIN transactions ON accounts.account_id = transactions.account_id
WHERE transactions.amount > 100000;
