SELECT BOOK_ID,to_char(PUBLISHED_DATE,'yyyy-mm-dd') as PUBLISHED_DATE
from book
where extract(year from published_date) = '2021' and category = '인문'
order by 2;