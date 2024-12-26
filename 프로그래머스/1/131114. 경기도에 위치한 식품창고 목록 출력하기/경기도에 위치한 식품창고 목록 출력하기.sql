SELECT WAREHOUSE_ID,WAREHOUSE_NAME,ADDRESS,
(case 
 when FREEZER_YN is null then 'N'
 else FREEZER_YN
 end) as FREEZER_YN 
from food_warehouse
where substr(warehouse_name,4,2) = '경기'
order by 1;