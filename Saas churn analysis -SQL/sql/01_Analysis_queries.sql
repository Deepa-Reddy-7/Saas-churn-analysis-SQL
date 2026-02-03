-- CHURN RATE BY PLAN --
SELECT plan_tier,
count(churned_accounts) AS churned__accounts,
count(*) AS total_accounts FROM churn_analysis
GROUP BY plan_tier;

-- CHURN RATE BY COUNTRY --
SELECT country,
count(churned_accounts) AS churned__accounts,
count(*) AS total_accounts FROM churn_analysis
GROUP BY country;

-- USGAE COMPARISION
SELECT
CASE WHEN churned_accounts IS NOT NULL THEN 'Churned'
ELSE 'Retained'
END AS churn_status,
AVG(total_usage_events) AS avg_usage
FROM churn_analysis
GROUP BY churn_status;

-- SUPORT TICKET IMPACT 

SELECT 
CASE WHEN churned_accounts IS NOT NULL THEN 'Churned'
ELSE 'Retained'
END AS churn_status,
AVG(total_tickets) AS avg_tickets
FROM churn_analysis
GROUP BY churn_status ;

-- CHURN RISK SCORING
CREATE VIEW churn_risk_scoring AS 
SELECT account_id,
CASE WHEN total_usage_events<30 AND total_tickets>=3 THEN "HIGH RISK"
WHEN total_usage_events<70 THEN "MEDIUM RISK"
ELSE "LOW RISK"
END AS churn_risk
FROM churn_analysis;


-- FINAL OUTPUT
SELECT churn_risk ,
count(*) AS accounts FROM churn_risk_scoring
GROUP BY churn_risk;