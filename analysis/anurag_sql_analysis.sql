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