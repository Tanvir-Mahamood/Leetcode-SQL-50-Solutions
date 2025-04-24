# Write your MySQL query statement below
# V2
SELECT name 
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;