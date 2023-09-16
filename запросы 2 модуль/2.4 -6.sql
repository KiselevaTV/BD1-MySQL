select name_author, title, count(buy_book.amount) as Количество
from author
    inner join book on author.author_id=book.author_id
    left join buy_book on book.book_id = buy_book.book_id
    group by name_author, title
    order by name_author, title;