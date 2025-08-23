select query_name,round(avg(rating/position),2) as quality,
round(avg(CASE WHEN RATING <3 THEN 1 ELSE 0 END)*100,2)AS
poor_query_percentage
from 
Queries
GROUP BY query_name


