# Write your MySQL query statement below
with cte as (
select case when order_date = customer_pref_delivery_date then 
'Immediate' else 'Scheduled' end as order_type,
row_number() over(partition by customer_id order by order_date) as earl_order 
from Delivery
)

select Round(sum(case when order_type = 'Immediate' then 1 else 0 end) * 100.0/count(*),2) as immediate_percentage
from cte
where earl_order = 1

-- select *,row_number() over(partition by customer_id order by order_date) as earl_order 
-- from 
-- Delivery
-- where earl_order = 1



