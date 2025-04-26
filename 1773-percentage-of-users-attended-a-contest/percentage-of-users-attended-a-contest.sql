# Write your MySQL query statement below
/*
select R.contest_id, 
round(count(R.user_id) * 100 /(select count(user_id) from Users) ,2) as percentage
from  Register as R
group by R.contest_id
order by percentage desc,contest_id;
*/
SELECT R.contest_id, 
round(count(R.user_id)*100 / (SELECT count(user_id) FROM Users), 2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, contest_id;