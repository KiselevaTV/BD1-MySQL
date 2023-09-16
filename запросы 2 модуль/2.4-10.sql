select buy_id, name_step
from buy_step
    inner join step on buy_step.step_id = step.step_id
where date_step_beg is not null and date_step_end is null
order by buy_id asc;