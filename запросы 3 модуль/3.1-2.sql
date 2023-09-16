select name_student, date_attempt, result
from student
            inner join attempt using(student_id)
            inner join subject using(subject_id)
            where name_subject = 'Основы баз данных'
order by result desc;