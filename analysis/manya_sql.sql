-- CUSTOMER PROFILE & DEMOGRAPHICS 
SELECT *
FROM telecomm;
-- What is the overall churn rate in the dataset? ANS : 30%
SELECT 
	(SELECT COUNT(churn) FROM telecomm WHERE churn=1)/COUNT(churn)*100 AS overall_churn_rate
FROM telecomm;

-- How does churn differ by gender? yes,possible 
SELECT gender, COUNT(churn) AS churn_rate
FROM telecomm
WHERE churn=1
GROUP BY gender;

    