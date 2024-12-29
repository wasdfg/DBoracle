SELECT PRODUCT_CODE,sum(price * sales_amount) as SALES
from offline_sale o left join product p on o.product_id = p.product_id
group by product_code
order by 2 desc,1;