# Write your MySQL query statement below
# select v.customer_id, count(v.visit_id) as count_no_trans from Visits v 
# LEFT JOIN 
# Transactions as t
# using(visit_id) where t.transaction_id is NULL
# group by v.customer_id;

SELECT customer_id, COUNT(visit_id) as count_no_trans 
FROM Visits
WHERE visit_id NOT IN (
	SELECT distinct visit_id FROM Transactions
	)
GROUP BY customer_id;