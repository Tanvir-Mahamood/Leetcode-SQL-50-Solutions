# Write your MySQL query statement below
/*
select 
    S.student_id,
    S.student_name, 
    E.subject_name, 
    count(E.subject_name)  as attended_exams
from Students as S left join Examinations as E
on E.student_id = S.student_id
group by E.student_id, E.subject_name
order by S.student_id, S.student_name;
*/
/*
Select 
  S.student_id, 
  S.student_name,
  sub.subject_name,
  count(E.subject_name) as attended_exams
from Students as S
join Subjects as sub
left join Examinations as E
on S.student_id = E.student_id 
  and sub.subject_name = E.subject_name
group by S.student_id, sub.subject_name
order by S.student_id, sub.subject_name;
*/

SELECT
    S.student_id,
    S.student_name,
    sub.subject_name,
    count(E.subject_name) as attended_exams
FROM Students AS S
JOIN Subjects AS sub
LEFT JOIN Examinations AS E
ON S.student_id = E.student_id AND sub.subject_name = E.subject_name
GROUP BY S.student_id, sub.subject_name
ORDER BY S.student_id, sub.subject_name;