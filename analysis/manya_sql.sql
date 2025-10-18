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

-- 5.Is churn higher among customers with higher monthly charges? Indicates if pricing and affordability are factors in churn. (OMIT)
SELECT * FROM telecomm;

-- 7.Does the payment method (e.g., electronic check, credit card, bank transfer) affect churn?Identifies if convenience or payment habits correlate with churn.(OMIT)


-- CHURN AND AGE
SELECT age,COUNT(churn) as churn_rate
FROM telecomm
WHERE churn=1
GROUP BY age;

-- CHURN AND SALARY
SELECT COUNT(churn) AS churn_rate
FROM telecomm
WHERE churn=1 AND estimated_salary>( SELECT AVG(estimated_salary) FROM telecomm);

-- CHURN AND GENDER
SELECT COUNT(churn) AS churn_rate, gender
FROM telecomm
WHERE churn=1
GROUP BY gender;

-- CHURN AND no_of_dependants
SELECT num_dependents,COUNT(churn) AS churn_rate
FROM telecomm
WHERE churn=1
GROUP BY num_dependents;

    