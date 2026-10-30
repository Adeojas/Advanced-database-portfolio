-- SUNNY BANK LTD
-- PORTFOLIO 3: TRANSACTIONS AND CONCURRENCY


-- 1. COMMIT EXAMPLE

BEGIN;

UPDATE accounts
SET balance = balance - 10000
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 10000
WHERE account_id = 2;

COMMIT;

SELECT * FROM accounts;


-- 2. ROLLBACK EXAMPLE

BEGIN;

UPDATE accounts
SET balance = balance - 10000
WHERE account_id = 1;

ROLLBACK;

SELECT * FROM accounts
WHERE account_id = 1;


-- 3. ISOLATION EXAMPLE

BEGIN TRANSACTION
ISOLATION LEVEL SERIALIZABLE;

SELECT *
FROM accounts
WHERE account_id = 1;

COMMIT;


-- 4. CONCURRENCY CONTROL EXAMPLE

BEGIN;

SELECT *
FROM accounts
WHERE account_id = 1
FOR UPDATE;

UPDATE accounts
SET balance = balance - 5000
WHERE account_id = 1;

COMMIT;
