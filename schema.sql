-- ============================================================
-- Case Study 1: Customer Account Summary
-- FILE: schema.sql
-- Description: Creates the customers and accounts tables
-- ============================================================

-- Drop tables if they already exist (for easy re-runs)
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS customers;

-- ------------------------------------------------------------
-- Table: customers
-- Stores basic information about each bank customer
-- ------------------------------------------------------------
CREATE TABLE customers (
    customer_id   INT           PRIMARY KEY,
    first_name    VARCHAR(50)   NOT NULL,
    last_name     VARCHAR(50)   NOT NULL,
    email         VARCHAR(100)  UNIQUE NOT NULL,
    city          VARCHAR(50)   NOT NULL,
    joined_date   DATE          NOT NULL
);

-- ------------------------------------------------------------
-- Table: accounts
-- Each customer can have one or more bank accounts
-- ------------------------------------------------------------
CREATE TABLE accounts (
    account_id    INT            PRIMARY KEY,
    customer_id   INT            NOT NULL,
    account_type  VARCHAR(20)    NOT NULL CHECK (account_type IN ('Savings', 'Checking', 'Fixed Deposit')),
    balance       DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    status        VARCHAR(10)    NOT NULL CHECK (status IN ('Active', 'Inactive', 'Closed')),
    opened_date   DATE           NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
