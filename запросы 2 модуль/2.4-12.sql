select name_client
from client
    inner join buy on client.client_id = buy.client_id
    inner join buy_book on buy.buy_id = buy_book.buy_id
    inner join book on buy_book.book_id = book.book_id
    inner join author on book.author_id = author.author_id
where name_author = 'Достоевский Ф.М.'
group by name_client
order by name_client asc; 