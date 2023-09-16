UPDATE book
     inner join buy_book using (book_id)
SET book.amount = book.amount - buy_book.amount 
WHERE buy_book.buy_id = 5;

select * from book