SELECT a1.machine_id,ROUND(avg(a2.timestamp - a1.timestamp),3) as processing_time 
FROM 
Activity a1
INNER JOIN Activity a2 
ON a1.machine_id = a2.machine_id and
a1.process_id = a2.process_id
where a2.timestamp > a1.timestamp
GROUP BY a1.machine_id