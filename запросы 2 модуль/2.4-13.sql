select name_genre, sum(buy_book.amount) as Количество
from genre
    inner join book on genre.genre_id = book.genre_id
    inner join buy_book on book.book_id = buy_book.book_id
group by name_genre
HAVING SUM(buy_book.amount) = 
(
    select max(sum_buy_book_amount) as max_sum_buy_book_amount
from 
    (
    select genre_id, sum(buy_book.amount) as sum_buy_book_amount
from buy_book
    inner join book on book.book_id = buy_book.book_id
group by genre_id
    ) query_in
);