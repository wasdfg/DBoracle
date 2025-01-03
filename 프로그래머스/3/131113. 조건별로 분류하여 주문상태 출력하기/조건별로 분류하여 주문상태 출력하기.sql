SELECT ORDER_ID,PRODUCT_ID,to_char(OUT_DATE,'yyyy-mm-dd') as OUT_DATE,(case 
                                     when out_date <= to_date('2022-05-01','yyyy-mm-dd') then '출고완료'
                                     when out_date > to_date('2022-05-01','yyyy-mm-dd') then '출고대기'
                                     when out_date is null then '출고미정'
                                     end) as 출고여부 
from FOOD_ORDER
order by 1;