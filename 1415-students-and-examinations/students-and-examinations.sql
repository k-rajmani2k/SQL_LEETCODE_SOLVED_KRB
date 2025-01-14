SELECT s.student_id,s.student_name,su.subject_name, COALESCE(count(e.subject_name),0) as attended_exams
FROM students s
cross join 
subjects su
left join
examinations e
on 
su.subject_name = e.subject_name and s.student_id = e.student_id
group by 1,2,3
order by 1,3


