# Write your MySQL query statement below
SELECT E.name, B.bonus
FROM Employee AS E 
LEFT JOIN Bonus AS B
ON E.empID = B.empID
WHERE B.bonus < 1000 or B.bonus IS NULL;