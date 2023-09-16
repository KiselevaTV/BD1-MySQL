select name_student, result 
from student
            inner join attempt using(student_id)
where result = (select max(result)
                from attempt)
order by name_student asc;