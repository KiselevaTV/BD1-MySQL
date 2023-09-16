insert into testing (attempt_id, question_id)
select attempt.attempt_id , question.question_id
from question
            left join attempt using(subject_id)
where attempt.attempt_id = (select max(attempt_id) from attempt)
ORDER BY RAND()
limit 3;


select * from testing