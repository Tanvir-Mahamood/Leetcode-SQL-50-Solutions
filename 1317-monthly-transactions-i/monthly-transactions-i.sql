# Write your MySQL query statement below , 
SELECT
    LEFT(trans_date, 7) AS month,
    country,
    count(id) AS trans_count,
    sum(state = 'approved') AS approved_count,
    sum(amount) AS trans_total_amount,
    # sum((state = 'approved') * amount) as approved_total_amount
    sum(CASE WHEN state = 'approved' THEN amount ELSE 0 end) AS approved_total_amount
FROM Transactions
GROUP BY month, country;