-- CHURNED ACCOUNTS

CREATE VIEW churned_accounts AS 
SELECT DISTINCT account_id FROM churn_events;

SELECT COUNT(distinct account_id) FROM churned_accounts;


