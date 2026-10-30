Portfolio 3: Transactions and Concurrency
This portfolio demonstrates transaction management and concurrency control using the Sunny Bank Ltd database.

COMMIT
A transaction was used to transfer ₦10,000 from Wale's account to Chidi's account. COMMIT was used to permanently save the transaction.

ROLLBACK
A withdrawal transaction was started and then cancelled using ROLLBACK. This demonstrated that changes can be reversed before they are permanently committed.

Isolation
The SERIALIZABLE isolation level was used to demonstrate transaction isolation. This helps prevent concurrent transactions from interfering with each other and supports data consistency.

Concurrency Control
SELECT FOR UPDATE was used to lock an account record during a transaction. This demonstrates a control mechanism that can prevent conflicting updates to the same bank account.
