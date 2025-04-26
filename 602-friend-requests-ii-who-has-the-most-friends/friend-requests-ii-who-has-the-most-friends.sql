# Write your MySQL query statement below
/*
select requester_id as id from RequestAccepted
UNION ALL
select accepter_id as id from RequestAccepted
*/

SELECT id,count(*) as num
FROM (
    select requester_id as id
    from RequestAccepted

    UNION ALL

    select accepter_id as id
    from RequestAccepted
    ) as friend_count
group by id
order by num desc
limit 1


