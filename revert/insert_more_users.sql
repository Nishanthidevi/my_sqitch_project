DELETE FROM users WHERE username IN ('alice');


-- BEGIN;
-- DELETE FROM users WHERE username IN ('alice');
-- ROLLBACK; -- This cancels the delete