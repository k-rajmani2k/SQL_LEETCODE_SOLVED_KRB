select round(sum(loginv)/count(distinct player_id),2)  as fraction from
(
select player_id,datediff(event_date,min(event_date) over(partition by player_id)) = 1  as loginv
from Activity
) as j    