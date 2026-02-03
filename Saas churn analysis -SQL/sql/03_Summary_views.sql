-- SUBSCRIPTION SUMMARY 
CREATE VIEW subscription_summary AS 
SELECT account_id,plan_tier ,
MAX(start_date) AS latest_suscription FROM subscriptions
 GROUP BY account_id,plan_tier;

-- FEATURE USAGE SUMMARY
CREATE VIEW usage_summary AS
SELECT s.account_id,
COUNT(*) AS total_usage_events,
MAX(usage_date) AS latest_usage_date 
FROM feature_usage f JOIN subscriptions s 
ON f.subscription_id=s.subscription_id
GROUP BY s.account_id;



-- SUPPORT TICKET SUMMARY
CREATE VIEW support_summary AS
SELECT account_id,
COUNT(*) AS total_tickets,
MAX(submitted_at) AS last_ticket_date
FROM support_tickets
GROUP BY account_id;


-- ANALYSIS VIEW
CREATE VIEW CHURN_ANALYSIS AS
SELECT a.account_id,
a.industry,
a.country,
s.plan_tier,
u.total_usage_events,
u.latest_usage_date,
sp.total_tickets,
ca.account_id AS churned_accounts
FROM accounts a
LEFT JOIN subscription_summary s 
	ON a.account_id=s.account_id
LEFT JOIN usage_summary u 
	ON a.account_id=u.account_id
LEFT JOIN support_summary sp 
	ON a.account_id=sp.account_id
LEFT JOIN churned_accounts ca	
	ON a.account_id=ca.account_id;
