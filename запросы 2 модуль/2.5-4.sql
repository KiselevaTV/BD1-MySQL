insert into buy_book(buy_id, book_id, amount)
select 5, book_id, 2
from book
    inner join author using(author_id)
where title = 'Лирика' and name_author like 'Пастер%';

insert into buy_book(buy_id, book_id, amount)
select 5, book_id, 1
from book
    inner join author using(author_id)
where title = 'Белая гвардия' and name_author like 'Булг%';

select * from buy_book
