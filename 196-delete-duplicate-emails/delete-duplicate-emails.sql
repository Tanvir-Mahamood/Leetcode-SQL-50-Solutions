# Write your MySQL query statement below
/*
delete T1.* from person T1 
join person T2
on T1.email = T2.email and T1.id > T2.id;
*/
delete T1.* from person T1, person T2
where T1.email = T2.email and T1.id > T2.id;