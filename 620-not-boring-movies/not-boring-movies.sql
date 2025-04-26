# Write your MySQL query statement below
SELECT Cinema.id, Cinema.movie, Cinema.description, Cinema.rating 
FROM Cinema
WHERE Cinema.id%2=1 AND Cinema.description != "boring"
ORDER BY Cinema.rating DESC;