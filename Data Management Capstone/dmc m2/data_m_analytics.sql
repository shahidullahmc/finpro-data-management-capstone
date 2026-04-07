-- # Analyze Opening & Closing Balance per Account
/* Joins customer_data and transaction_data
Takes the original balance from customer_data as the opening balance
Calculates closing balance by subtracting each transaction amount
Groups results by AccountId
Shows one row per account */


SELECT 
    cd.AccountId,
    BranchCode,
    balance AS openingBalance,
    SUM(balance - TransactionAmount) AS closingBalance
FROM customer_data cd,
     transaction_data td
WHERE cd.AccountId = td.AccountId
GROUP BY cd.AccountId;

/* This query joins customer_data and transaction_data tables, aggregates the data, 
and provides an opening and closing balance for each account. */

-- # Analyze Deposit & Withdrawal Count per Customer

/* Joins customers with their transactions
Counts how many Deposits each customer made
Counts how many Withdrawals each customer made
Groups results by customerid */

SELECT 
    cd.customerid,
    SUM(CASE WHEN td.transactiontype = 'Deposit' THEN 1 ELSE 0 END) AS Deposit_Count,
    SUM(CASE WHEN td.transactiontype = 'Withdrawal' THEN 1 ELSE 0 END) AS Withdrawal_Count
FROM customer_data cd,
     transaction_data td
WHERE cd.AccountId = td.AccountId
GROUP BY cd.customerid;


