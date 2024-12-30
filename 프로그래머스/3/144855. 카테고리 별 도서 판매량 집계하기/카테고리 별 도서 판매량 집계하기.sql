SELECT CATEGORY,sum(sales) as TOTAL_SALES
from BOOK_SALES left join book on book_sales.book_id = book.book_id
where to_char(sales_date,'yyyy-mm') = '2022-01'
group by category
order by category;