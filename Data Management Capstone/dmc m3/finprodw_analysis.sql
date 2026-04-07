SELECT * FROM finproDimDate LIMIT 5;

SELECT * FROM finproDimBranches LIMIT 5;

---------------------------------------------
SELECT 
    customerid,
    accountid,
    SUM(balance) AS total_balance
FROM finproDimCustomers
GROUP BY GROUPING SETS (
    (customerid, accountid),   -- detailed level
    (customerid),              -- subtotal by customer
    (accountid),               -- subtotal by account
    ()                         -- grand total
);

-----------------------------------------------

-- ROLLUP
SELECT
    customers.branchcode,
    customers.accounttype,
    SUM(facts.transactionamount) AS total_transaction
FROM finproFactTransactions AS facts
JOIN finproDimCustomers AS customers
ON facts.accountid = customers.accountid
GROUP BY ROLLUP (customers.branchcode, customers.accounttype);
------------------------------------------------------------------
-- CUBE
SELECT
    EXTRACT(YEAR FROM TO_DATE(customers.datejoined, 'MM/DD/YYYY')) AS year_of_joining,
    customers.country,
    customers.balance + COALESCE(SUM(facts.transactionamount), 0) AS closing_balance
FROM finproDimCustomers AS customers
LEFT JOIN finproFactTransactions AS facts
    ON customers.accountid = facts.accountid
GROUP BY CUBE (
    EXTRACT(YEAR FROM TO_DATE(customers.datejoined, 'MM/DD/YYYY')),
    customers.country,
    customers.balance
);
------------------------------------------------------------------------------
-- MQT
CREATE MATERIALIZED VIEW Total_transaction_per_branch AS
SELECT
    customers.branchcode,
    SUM(facts.transactionamount) AS total_transaction
FROM finproFactTransactions AS facts
JOIN finproDimCustomers AS customers
    ON facts.accountid = customers.accountid
GROUP BY customers.branchcode;

-- Next
SELECT * FROM Total_transaction_per_branch;
