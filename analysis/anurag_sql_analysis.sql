/*
Customer Profile & Demographics
3.	Are senior citizens more likely to churn than younger customers?
→ Reveals if older customers have a higher tendency to leave.
4.	Does having a partner or dependents affect churn rates?
→ Tests if family responsibilities impact loyalty.
*/
-- 3. > 45 churn happening -> minor trend possible
SELECT age,COUNT(churn) AS num_of_churn
FROM telecomm
WHERE churn = 1
GROUP BY age
ORDER BY age DESC;
-- 4. 0: 1 churn, 1 partner : 1 churn , 4 partner : 1 churn -> churn not dependent on num_dependents column
SELECT num_dependents, COUNT(churn) AS num_of_churn
FROM telecomm
WHERE churn = 1
GROUP BY num_dependents
ORDER BY num_dependents;
/*
Billing, Tenure & Payment Patterns
5.	Is churn higher among customers with higher monthly charges?
→ Indicates if pricing and affordability are factors in churn.
6.	Do customers with longer tenure tend to stay longer (churn less)?
→ Evaluates loyalty and satisfaction over time.
7.	Does the payment method (e.g., electronic check, credit card, bank transfer) affect churn? (EXCEL CHECK)
→ Identifies if convenience or payment habits correlate with churn.
8.	Is there a difference in churn between paperless billing and mailed billing customers? (OMIT)
→ Shows if billing experience affects retention.
*/

-- 6 Do customers with longer tenure tend to stay longer (churn less)? -> have to create new column + correl() in Excel
SELECT (CURRENT_DATE() - date_of_registration) AS tenure -- tenure logic figured out
FROM telecomm;

-- 8 Is there a difference in churn between paperless billing and mailed billing customers? -> no payment method specified
SELECT * FROM telecomm;

-- UNIVARIATE ANALYSIS - Gender demographics
SELECT gender,COUNT(gender) AS perc
FROM telecomm
GROUP BY gender;

/*
BIVARIATE ANALYSIS
•	Churn and Gender: 
•	Churn and Age: 
•	Churn and Salary: 
•	Churn and Number of Dependents:
•	Churn and Tenure: (need more data)
*/
SELECT gender, COUNT(churn) AS churn_num -- male churn > female churn -> possible that 1 gender churning more
FROM telecomm
WHERE churn = 1
GROUP BY gender;

SELECT age,COUNT(churn) AS churn_num -- age 57 and 46 churning -> possible that certain ages churn more
FROM telecomm
WHERE churn = 1
GROUP BY age;
-- salary does matter 
SELECT COUNT(churn) as churn_num
FROM telecomm
WHERE churn = 1 AND estimated_salary > (SELECT AVG(estimated_salary) FROM telecomm);

SELECT COUNT(churn) as churn_num
FROM telecomm
WHERE churn = 1 AND estimated_salary < (SELECT AVG(estimated_salary) FROM telecomm);

SELECT num_dependents,COUNT(churn) AS churn_num -- not necessary that there is a straight trend of num of depedents and churn
FROM telecomm
WHERE churn = 1
GROUP BY num_dependents 
ORDER BY churn_num DESC;

-- ADVANCED ANALYSIS needs Excel only.