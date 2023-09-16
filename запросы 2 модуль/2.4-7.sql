select name_city, count(buy.buy_id) as Количество
from city
    inner join client USING (city_id)
    inner join buy USING (client_id)
group by name_city
order by Количество desc, name_city asc;