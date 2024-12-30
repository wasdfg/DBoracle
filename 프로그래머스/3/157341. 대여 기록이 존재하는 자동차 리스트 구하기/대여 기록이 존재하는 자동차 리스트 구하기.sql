SELECT distinct(h.car_id) 
from CAR_RENTAL_COMPANY_RENTAL_HISTORY h left join CAR_RENTAL_COMPANY_CAR c
on h.car_id = c.car_id 
where to_char(start_date,'yyyy-mm') = '2022-10' and car_type = '세단'
order by 1 desc;