select name_subject, count(distinct student_id) as Количество
from subject
            left join attempt on subject.subject_id = attempt.subject_id
group by name_subject
order by Количество desc, name_subject;