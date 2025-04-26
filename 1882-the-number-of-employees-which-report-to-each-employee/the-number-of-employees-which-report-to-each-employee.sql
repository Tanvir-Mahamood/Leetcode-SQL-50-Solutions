# Write your MySQL query statement below
/*
select 
    reports_to as employee_id, 
    count(name) as reports_count, 
    round(avg(age)) as average_age
from Employees 
where reports_to is not null 
group by reports_to;
*/

select 
    b.reports_to as employee_id, 
    a.name as name,
    count(b.name) as reports_count, 
    round(avg(b.age)) as average_age
from Employees as b
join Employees as a
on b.reports_to = a.employee_id
where b.reports_to is not null 
group by b.reports_to
order by b.reports_to;