/* select product_id , max(change_date) as date from Products 
where change_date <='2019-08-16' group by product_id */

/*
select product_id, new_price as price from Products where (product_id,change_date) in 
(select product_id , max(change_date) as date from Products where change_date    <='2019-08-16' group by product_id) */

/*
select distinct product_id, 10 as price from Products where product_id not in(select distinct product_id from Products where change_date <='2019-08-16' )*/

SELECT DISTINCT product_id, 10 AS price 
FROM Products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id 
    FROM Products
    WHERE change_date <= "2019-08-16"
)

UNION

SELECT product_id, new_price AS price 
FROM Products
WHERE (product_id, change_date) IN (
    SELECT product_id, MAX(change_date) AS date 
    FROM Products
    WHERE change_date <= "2019-08-16"
    GROUP BY product_id
)