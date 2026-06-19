# Case Study 1: Customer Account Summary

**Level:** Beginner  
**Domain:** Retail Banking  
**Skills:** SELECT, WHERE, GROUP BY, ORDER BY, HAVING, aggregate functions

---

## Business Context

You are a junior data analyst at **FirstBank**. The retail banking team needs a summary report of all customer accounts to understand the current state of the business. Your manager has asked you to answer several business questions using the bank's customer and account database.

---

## Database Schema

```
customers
├── customer_id     INT (PK)
├── first_name      VARCHAR
├── last_name       VARCHAR
├── email           VARCHAR
├── city            VARCHAR
└── joined_date     DATE

accounts
├── account_id      INT (PK)
├── customer_id     INT (FK → customers)
├── account_type    VARCHAR  -- 'Savings', 'Checking', 'Fixed Deposit'
├── balance         DECIMAL
├── status          VARCHAR  -- 'Active', 'Inactive', 'Closed'
└── opened_date     DATE
```

---

## Business Questions

1. List all customers with their full name and the city they live in, sorted alphabetically by last name.
2. How many accounts does each account type have?
3. What is the total and average balance for each account type?
4. Which customers have a total balance greater than $10,000 across all their accounts?
5. How many active accounts were opened each year?
6. List the top 5 customers by total balance (show full name and total balance).
7. Which cities have more than 2 customers?
8. Find all customers who have more than one account.

---

## How to Run

1. Run `schema.sql` to create the tables
2. Run `seed_data.sql` to insert sample data
3. Open `solution.sql` to see the queries and answers

**Compatible with:** MySQL, PostgreSQL, SQLite
