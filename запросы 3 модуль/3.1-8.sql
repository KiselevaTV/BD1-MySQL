select name_question, name_answer, if(is_correct = 1, 'Верно', 'Неверно') as Результат
from question
             inner join testing using(question_id)
             inner join answer using(answer_id)
where attempt_id = 7;