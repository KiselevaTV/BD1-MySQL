select name_department, name_program, plan, count(enrollee_id) as Количество, round((count(enrollee_id)/plan), 2) as Конкурс
from department
               inner join program using(department_id)
               inner join program_enrollee using(program_id)
group by name_department, name_program, plan
order by Конкурс desc;