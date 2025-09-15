# Write your MySQL query statement below
select 
user_id,coalesce(count(follower_id),0) as followers_count
from
Followers
group by user_id
order by user_id