# Write your MySQL query statement below
select 
p.product_id,
coalesce(round(sum(u.units * p.price)/sum(u.units),2),0) as average_price
from 
Prices p
left join
UnitsSold u
on p.product_id = u.product_id
and start_date <= u.purchase_date
and u.purchase_date <= end_date
group by p.product_id