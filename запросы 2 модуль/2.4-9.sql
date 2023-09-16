select buy.buy_id, name_client, sum(price * buy_book.amount) as Стоимость
from
    buy
        inner join client using(client_id)
        inner join buy_book using(buy_id)
        inner join book using(book_id)
    group by buy.buy_id, name_client
    order by buy_id;