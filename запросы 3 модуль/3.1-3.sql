select name_subject, count(attempt.subject_id) as Количество, round(avg(result), 2) as Среднее
from subject
            left join attempt on subject.subject_id = attempt.subject_id
group by name_subject
order by Среднее desc;