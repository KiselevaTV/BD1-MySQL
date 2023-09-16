select name_enrollee
from enrollee
            inner join program_enrollee using(enrollee_id)
            inner join program using(program_id)
where name_program = 'Мехатроника и робототехника'
order by name_enrollee;