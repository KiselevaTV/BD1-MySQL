select question_id, name_question
from question
             inner join subject using(subject_id)
where name_subject = 'Основы баз данных'
ORDER BY RAND()
limit 3;