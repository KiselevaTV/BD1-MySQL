select name_student, name_subject, date_attempt, round(sum(is_correct / 3 * 100), 2) as Результат
from answer
            inner join testing using(answer_id)
            inner join attempt using(attempt_id)
            inner join student using(student_id)
            inner join subject using(subject_id)
group by name_student, name_subject, date_attempt
order by name_student, date_attempt desc;