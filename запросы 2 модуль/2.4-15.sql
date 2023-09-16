select title, sum(Количество) as Количество,  sum(Сумма) as Сумма
from
(
  select title, sum(buy_archive.amount) as Количество, sum(buy_archive.price * buy_archive.amount)  as Сумма
from buy_archive
    inner join book using(book_id)
    group by title
union all
select title, sum(buy_book.amount), sum(book.price * buy_book.amount)
from book
    inner join buy_book using(book_id)
    inner join buy using(buy_id)
    inner join buy_step using(buy_id)
   where step_id = 1 and date_step_end is not null
   group by title
    )query_in
group by title
order by sum(Сумма) desc;
