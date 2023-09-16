select buy_step.buy_id, DATEDIFF(date_step_end, date_step_beg) as 'Количество_дней', if((DATEDIFF(date_step_end, date_step_beg)) > days_delivery, (DATEDIFF(date_step_end, date_step_beg)) - days_delivery, 0) as Опоздание
from buy_step
inner join step on buy_step.step_id = step.step_id
inner join buy on buy.buy_id = buy_step.buy_id
inner join client on client.client_id = buy.client_id
inner join city on city.city_id = client.city_id
where name_step = 'Транспортировка' and date_step_end is not null
order by buy_id;