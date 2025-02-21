# Write your MySQL query statement below

select s.user_id,
coalesce(Round(Sum(case when action ='confirmed' then 1 else 0 END)/ Count(s.user_id),2),0.00)
as confirmation_rate from 
signups s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id