-- ============================================================
-- Case Study 1: Customer Account Summary
-- FILE: seed_data.sql
-- Description: Inserts sample customer and account data
-- ============================================================

-- ------------------------------------------------------------
-- Customers (20 sample bank customers)
-- ------------------------------------------------------------
INSERT INTO customers (customer_id, first_name, last_name, email, city, joined_date) VALUES
(1,  'Priya',    'Sharma',    'priya.sharma@email.com',    'Mumbai',    '2018-03-15'),
(2,  'Rahul',    'Verma',     'rahul.verma@email.com',     'Delhi',     '2019-07-22'),
(3,  'Anjali',   'Singh',     'anjali.singh@email.com',    'Bangalore', '2020-01-10'),
(4,  'Vikram',   'Patel',     'vikram.patel@email.com',    'Mumbai',    '2017-11-05'),
(5,  'Sneha',    'Iyer',      'sneha.iyer@email.com',      'Chennai',   '2021-04-18'),
(6,  'Arjun',    'Mehta',     'arjun.mehta@email.com',     'Delhi',     '2016-09-30'),
(7,  'Kavya',    'Nair',      'kavya.nair@email.com',      'Bangalore', '2022-02-28'),
(8,  'Rohan',    'Gupta',     'rohan.gupta@email.com',     'Pune',      '2019-06-14'),
(9,  'Meera',    'Joshi',     'meera.joshi@email.com',     'Mumbai',    '2020-08-03'),
(10, 'Aditya',   'Kumar',     'aditya.kumar@email.com',    'Hyderabad', '2018-12-19'),
(11, 'Divya',    'Reddy',     'divya.reddy@email.com',     'Hyderabad', '2021-10-07'),
(12, 'Karan',    'Malhotra',  'karan.malhotra@email.com',  'Delhi',     '2017-05-23'),
(13, 'Pooja',    'Desai',     'pooja.desai@email.com',     'Pune',      '2019-03-11'),
(14, 'Suresh',   'Pillai',    'suresh.pillai@email.com',   'Chennai',   '2020-07-29'),
(15, 'Nisha',    'Agarwal',   'nisha.agarwal@email.com',   'Mumbai',    '2022-05-16'),
(16, 'Manish',   'Tiwari',    'manish.tiwari@email.com',   'Bangalore', '2018-01-08'),
(17, 'Ritika',   'Bose',      'ritika.bose@email.com',     'Kolkata',   '2021-09-12'),
(18, 'Deepak',   'Chopra',    'deepak.chopra@email.com',   'Delhi',     '2016-03-27'),
(19, 'Ananya',   'Mishra',    'ananya.mishra@email.com',   'Pune',      '2023-01-04'),
(20, 'Sanjay',   'Rao',       'sanjay.rao@email.com',      'Bangalore', '2017-08-20');

-- ------------------------------------------------------------
-- Accounts (30 accounts spread across the 20 customers)
-- ------------------------------------------------------------
INSERT INTO accounts (account_id, customer_id, account_type, balance, status, opened_date) VALUES
(101, 1,  'Savings',       15200.50, 'Active',   '2018-03-16'),
(102, 1,  'Checking',       3400.00, 'Active',   '2019-06-01'),
(103, 2,  'Savings',        8750.75, 'Active',   '2019-07-23'),
(104, 3,  'Fixed Deposit', 50000.00, 'Active',   '2020-01-15'),
(105, 3,  'Savings',        2300.25, 'Active',   '2020-01-15'),
(106, 4,  'Checking',       1200.00, 'Inactive', '2017-11-10'),
(107, 4,  'Savings',       22500.00, 'Active',   '2018-02-20'),
(108, 5,  'Savings',        5600.00, 'Active',   '2021-04-20'),
(109, 6,  'Fixed Deposit', 75000.00, 'Active',   '2016-10-01'),
(110, 6,  'Checking',       9800.50, 'Active',   '2018-05-14'),
(111, 7,  'Savings',        1100.00, 'Active',   '2022-03-01'),
(112, 8,  'Checking',       4300.75, 'Active',   '2019-06-15'),
(113, 8,  'Savings',       11000.00, 'Active',   '2020-02-10'),
(114, 9,  'Fixed Deposit', 30000.00, 'Active',   '2020-08-05'),
(115, 10, 'Savings',        6700.00, 'Active',   '2019-01-22'),
(116, 10, 'Checking',       2200.50, 'Inactive', '2018-12-20'),
(117, 11, 'Savings',        9100.25, 'Active',   '2021-10-10'),
(118, 12, 'Fixed Deposit', 45000.00, 'Active',   '2017-06-01'),
(119, 12, 'Savings',        3800.00, 'Active',   '2019-08-18'),
(120, 13, 'Checking',       2100.00, 'Closed',   '2019-03-12'),
(121, 14, 'Savings',        7400.00, 'Active',   '2020-08-01'),
(122, 15, 'Savings',         850.00, 'Active',   '2022-05-20'),
(123, 16, 'Fixed Deposit', 60000.00, 'Active',   '2018-02-01'),
(124, 16, 'Checking',       4500.00, 'Active',   '2020-11-30'),
(125, 17, 'Savings',        3200.00, 'Active',   '2021-09-15'),
(126, 18, 'Fixed Deposit', 90000.00, 'Active',   '2016-04-01'),
(127, 18, 'Savings',       12000.00, 'Active',   '2017-03-10'),
(128, 19, 'Checking',        600.00, 'Active',   '2023-01-05'),
(129, 20, 'Savings',        5300.00, 'Active',   '2017-09-01'),
(130, 20, 'Fixed Deposit', 25000.00, 'Active',   '2021-06-15');
