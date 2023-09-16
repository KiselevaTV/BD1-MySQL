select name_student, name_subject, datediff(max(date_attempt), min(date_attempt)) as Интервал
from student
            inner join attempt using(student_id)
            inner join subject using(subject_id)
group by name_student, name_subject
having count(attempt.student_id) > 1
order by Интервал asc;