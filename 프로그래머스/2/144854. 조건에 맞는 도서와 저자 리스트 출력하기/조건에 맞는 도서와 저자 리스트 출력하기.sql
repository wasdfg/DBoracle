SELECT BOOK_ID,AUTHOR_NAME,to_char(PUBLISHED_DATE,'yyyy-mm-dd') as PUBLISHED_DATE 
from book b left join author a on b.author_id = a.author_id
where category = '경제'
order by 3;