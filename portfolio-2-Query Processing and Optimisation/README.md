Brief Performance Analysis
EXPLAIN ANALYZE was used to compare the transaction query before and after creating an index on the account_id column.

Before indexing, the query used a sequential scan with an execution time of 0.003 ms. After indexing, PostgreSQL still used a sequential scan and the execution time was 0.010 ms.

This occurred because the test database contains only six transaction records, making a sequential scan efficient for such a small dataset. The index would be more beneficial as the number of transaction records increases.
