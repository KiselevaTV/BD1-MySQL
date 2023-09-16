select name_subject, count(subject_id) as Количество, max(result) as Максимум, min(result) as Минимум, round(avg(result), 1) as Среднее
from subject
            inner join enrollee_subject using(subject_id)
group by name_subject
order by name_subject asc;