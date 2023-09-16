select name_subject, concat(left(name_question, 30), '...') as Вопрос, count(answer.is_correct) as Всего_ответов, round((sum(answer.is_correct)/ count(answer.is_correct) * 100), 2) as Успешность
from subject
            inner join question using(subject_id)
            inner join testing using(question_id)
            left join answer using(answer_id)
group by name_subject, Вопрос
order by 1, 4 desc, 2 asc;