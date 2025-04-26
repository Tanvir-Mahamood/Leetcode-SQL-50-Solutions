# Write your MySQL query statement below
/*select O.product_id, O.order_date, O.unit from Orders O
where O.order_date between '2020-02-01' and '2020-02-29';*/

select 
    P.product_name , 
    sum(O.unit) as unit
from Products P 
join Orders O 
on P.product_id = O.product_id
where O.order_date between '2020-02-01' and '2020-02-29' 
group by O.product_id
having sum(O.unit) >= 100;