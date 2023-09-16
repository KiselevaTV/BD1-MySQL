insert into attempt (student_id, subject_id, date_attempt)
select student.student_id, subject.subject_id, now()
from subject
            inner join attempt using(subject_id)
            inner join student using(student_id)
where name_student in ('Баранов Павел') and name_subject in ('Основы баз данных');


select * from attempt