select YEAR(date_payment) as Год, MONTHNAME(date_payment) as Месяц, sum(amount * price) as Сумма
from buy_archive
group by YEAR(date_payment), MONTHNAME(date_payment)
union
select YEAR(date_step_end), MONTHNAME(date_step_end), sum(buy_book.amount * book.price)
from book
    INNER JOIN buy_book USING(book_id)
    INNER JOIN buy USING(buy_id) 
    INNER JOIN buy_step USING(buy_id)
    INNER JOIN step USING(step_id)   
where date_step_end IS NOT Null and name_step = "Оплата"
group by YEAR(date_step_end), MONTHNAME(date_step_end)
order by Месяц, Год;