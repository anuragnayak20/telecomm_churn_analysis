/*
LOADED THE CSV FILE IN THE SCHEMA (only 759 rows but csv has more than 2,43,000 rows)
Slow data import (C: drive full) caused to stop data import at 759 rows. 
SQL analysis here used to conduct exploratory analysis

1. univariate: male to female percentage , age distribution
2. bivariate : churn affected by gender, age, salary, num of dependents, tenure
3. advanced analysis : data, calls, sms usage affecting churn {only possible in excel}
*/
SELECT COUNT(*) FROM telecom_churn; -- 759 of the total 2,00,000 rows loaded (slow import process)
SELECT * FROM telecom_churn; -- to view the whole table
-- UNIVARIATE analysis
-- in first 759, 39% female and 61% male
SELECT gender, COUNT(*) AS gender_count, ROUND(COUNT(*)/(SELECT COUNT(*) FROM telecom_churn)*100.0,0) AS gender_perc
FROM telecom_churn
GROUP BY gender;
-- age distribution - evenly distributed ages
SELECT age, COUNT(*) AS age_count
FROM telecom_churn
GROUP BY age
ORDER BY age_count DESC;

-- BIVARIATE 
-- males have higher churn
SELECT gender, COUNT(churn) AS churn_headcount
FROM telecom_churn
WHERE churn = 1
GROUP BY gender;

-- certain age groups have more churn but no uniform trend
SELECT age, COUNT(churn) AS churn_headcount
FROM telecom_churn
WHERE churn = 1
GROUP BY age
ORDER BY churn_headcount DESC;

-- more people churn if salary > mean
SELECT COUNT(*) AS churn_headcount_above_mean_salary
FROM telecom_churn
WHERE churn = 1 AND estimated_salary > (SELECT AVG(estimated_salary) FROM telecom_churn);
-- lesser people if salary < mean
SELECT COUNT(*) AS churn_headcount_lesser_or_equal_to_mean_salary
FROM telecom_churn
WHERE churn = 1 AND estimated_salary <= (SELECT AVG(estimated_salary) FROM telecom_churn);

-- if dependents = 3, then max churn
SELECT num_dependents, COUNT(churn) AS churn_headcount
FROM telecom_churn
WHERE churn = 1
GROUP BY num_dependents
ORDER BY num_dependents DESC;

-- no specific trend noticed in tenure
SELECT DATEDIFF(CURDATE(), date_of_registration) AS tenure_days, COUNT(churn) AS churned_members
FROM telecom_churn
WHERE churn = 1
GROUP BY tenure_days
ORDER BY tenure_days;

-- after SQL exploratory analysis , database dropped to free up space in my computer
DROP DATABASE telecom_project;