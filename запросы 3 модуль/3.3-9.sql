select name_program
from program
            inner join program_subject using(program_id)
            inner join subject using(subject_id)
where name_subject in ('Информатика', 'Математика')
group by name_program
having count(name_program) = 2
order by name_program;