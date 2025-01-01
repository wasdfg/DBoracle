SELECT fo.PRODUCT_ID,PRODUCT_NAME,sum(amount*price) TOTAL_SALES
from FOOD_ORDER fo left join FOOD_PRODUCT fp
    on fo.PRODUCT_ID = fp.PRODUCT_ID
where to_char(produce_date,'yyyymm') = '202205'
group by fo.product_id,PRODUCT_NAME
order by 3 desc,1;