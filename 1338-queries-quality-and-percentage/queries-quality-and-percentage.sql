# Write your MySQL query statement below
#query <3 is poor query
with cte as(
select query_name, rating/position as ratio, case when rating < 3 
then 1 else 0 end as poor_query
from Queries
)
select query_name,Round(avg(ratio),2) as quality
,Round(sum(poor_query)/count(query_name) * 100,2) as  poor_query_percentage
from
cte
group by query_name

