select buy_id, date_step_end
from buy_step
where date_step_end is not null and step_id = 1;