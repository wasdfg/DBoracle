SELECT CAR_TYPE,count(*) as cars 
from CAR_RENTAL_COMPANY_CAR
where REGEXP_LIKE(options, '통풍시트|열선시트|가죽시트')
group by car_type
order by 1;
