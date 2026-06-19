-- ============================================================
-- Case Study 1: Customer Account Summary
-- FILE: solution.sql
-- Description: SQL solutions to all 8 business questions
-- ============================================================


-- ============================================================
-- Q1: List all customers with their full name and city,
--     sorted alphabetically by last name.
-- ============================================================
-- Concepts: SELECT, string concatenation, ORDER BY

SELECT
    customer_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    city
FROM customers
ORDER BY last_name ASC;

/*
Expected: 20 rows sorted A–Z by last name.
Example top rows: Nisha Agarwal, Ritika Bose, Deepak Chopra...
*/


-- ============================================================
-- Q2: How many accounts does each account type have?
-- ============================================================
-- Concepts: GROUP BY, COUNT, ORDER BY

SELECT
    account_type,
    COUNT(*) AS total_accounts
FROM accounts
GROUP BY account_type
ORDER BY total_accounts DESC;

/*
Expected result:
  Savings       | 15
  Fixed Deposit |  8
  Checking      |  7
*/


-- ============================================================
-- Q3: What is the total and average balance for each account type?
-- ============================================================
-- Concepts: GROUP BY, SUM, AVG, ROUND

SELECT
    account_type,
    COUNT(*)                       AS total_accounts,
    ROUND(SUM(balance), 2)         AS total_balance,
    ROUND(AVG(balance), 2)         AS avg_balance
FROM accounts
GROUP BY account_type
ORDER BY total_balance DESC;

/*
Expected result:
  Fixed Deposit | 8  | 375000.00 | 46875.00
  Savings       | 15 | 114700.75 |  7646.72
  Checking      | 7  |  28100.75 |  4014.39
*/


-- ============================================================
-- Q4: Which customers have a total balance > $10,000?
-- ============================================================
-- Concepts: JOIN, GROUP BY, SUM, HAVING

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    ROUND(SUM(a.balance), 2)               AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(a.balance) > 10000
ORDER BY total_balance DESC;

/*
Expected result: 11 customers
Top rows:
  Deepak Chopra   | 102000.00
  Arjun Mehta     |  84800.50
  Manish Tiwari   |  64500.00
  Anjali Singh    |  52300.25  ...
*/


-- ============================================================
-- Q5: How many active accounts were opened each year?
-- ============================================================
-- Concepts: WHERE, YEAR() / strftime, GROUP BY, ORDER BY

-- MySQL / PostgreSQL:
SELECT
    YEAR(opened_date)  AS year_opened,
    COUNT(*)           AS active_accounts_opened
FROM accounts
WHERE status = 'Active'
GROUP BY YEAR(opened_date)
ORDER BY year_opened ASC;

-- SQLite version (use this if running in SQLite):
-- SELECT
--     strftime('%Y', opened_date)  AS year_opened,
--     COUNT(*)                     AS active_accounts_opened
-- FROM accounts
-- WHERE status = 'Active'
-- GROUP BY strftime('%Y', opened_date)
-- ORDER BY year_opened ASC;

/*
Expected result:
  2016 | 2
  2017 | 4
  2018 | 4
  2019 | 5
  2020 | 6
  2021 | 4
  2022 | 2
  2023 | 1
*/


-- ============================================================
-- Q6: Top 5 customers by total balance (full name + total balance)
-- ============================================================
-- Concepts: JOIN, GROUP BY, SUM, ORDER BY, LIMIT

SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    ROUND(SUM(a.balance), 2)               AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_balance DESC
LIMIT 5;

/*
Expected result:
  Deepak Chopra   | 102000.00
  Arjun Mehta     |  84800.50
  Manish Tiwari   |  64500.00
  Anjali Singh    |  52300.25
  Karan Malhotra  |  48800.00
*/


-- ============================================================
-- Q7: Which cities have more than 2 customers?
-- ============================================================
-- Concepts: GROUP BY, COUNT, HAVING

SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 2
ORDER BY customer_count DESC;

/*
Expected result:
  Mumbai    | 4
  Delhi     | 4
  Bangalore | 4
  Pune      | 3
*/


-- ============================================================
-- Q8: Find all customers who have more than one account.
-- ============================================================
-- Concepts: JOIN, GROUP BY, COUNT, HAVING

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    COUNT(a.account_id)                    AS number_of_accounts
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(a.account_id) > 1
ORDER BY number_of_accounts DESC;

/*
Expected result: 9 customers with multiple accounts
Example rows:
  Priya Sharma   | 2
  Anjali Singh   | 2
  Vikram Patel   | 2
  Arjun Mehta    | 2  ...
*/
