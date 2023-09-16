select name_program
from program
            inner join program_subject using(program_id)
group by name_program
having min(min_result) >= 40
order by name_program asc;