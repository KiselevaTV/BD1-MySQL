update attempt
set result = (
   select round(sum(is_correct / 3 * 100))
    from answer
    inner join testing using(answer_id)
    where attempt_id = 8   
)
where attempt.attempt_id = 8;


select * from attempt