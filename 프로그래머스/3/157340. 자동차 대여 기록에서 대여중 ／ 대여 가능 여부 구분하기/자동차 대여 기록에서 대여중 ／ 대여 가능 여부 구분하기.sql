SELECT car_id,(case 
               when max(AVAILABILITY) = '대여중' then '대여중'
               else '대여 가능'
               end) as AVAILABILITY
from (select car_id,(case 
               when to_char(END_DATE,'yyyy-mm-dd') >= '2022-10-16' and to_char(START_DATE,'yyyy-mm-dd') <= '2022-10-16' then '대여중'
               else '대여 가능'
               end) as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY)
group by car_id
order by 1 desc;