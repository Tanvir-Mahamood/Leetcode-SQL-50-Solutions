# Write your MySQL query statement below
/*
select P.product_id, U.units, (U.units * P.price) 
from Prices as P left join UnitsSold as U
on P.product_id = U.product_id 
where U.purchase_date between P.start_date and P.end_date;
*/
/*
select P.product_id, P.price, U.units, (U.units * P.price) 
from Prices as P left join UnitsSold as U
on P.product_id = U.product_id
where U.purchase_date between P.start_date and P.end_date or U.units is null;
*/

SELECT P.product_id, 
COALESCE(round( sum(U.units * P.price) / sum(U.units), 2),0) AS average_price
FROM Prices AS P 
LEFT JOIN UnitsSold AS U
ON P.product_id = U.product_id 
AND P.start_date <= U.purchase_date 
AND U.purchase_date <= P.end_date
GROUP BY P.product_id;