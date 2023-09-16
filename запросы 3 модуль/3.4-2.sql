create table applicant as
select program.program_id, enrollee.enrollee_id, sum(result) as itog
from enrollee
            inner join program_enrollee on enrollee.enrollee_id = program_enrollee.enrollee_id
            inner join program on program.program_id = program_enrollee.program_id
            inner join program_subject on program.program_id = program_subject.program_id
            inner join subject on subject.subject_id = program_subject.subject_id
            inner join enrollee_subject on subject.subject_id = enrollee_subject.subject_id and                      enrollee_subject.enrollee_id = enrollee.enrollee_id
group by program_id, enrollee_id
order by program_id, itog desc;

select * from applicant