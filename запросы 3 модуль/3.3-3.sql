select name_program
from program
            inner join program_subject using(program_id)
            inner join subject using(subject_id)
where name_subject = 'Информатика'
order by name_program desc;   