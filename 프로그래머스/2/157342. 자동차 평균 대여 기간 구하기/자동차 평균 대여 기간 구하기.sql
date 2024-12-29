SELECT CAR_ID,TO_CHAR(ROUND(AVG(end_date - start_date + 1), 1), 'fm9999.0') as AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
having ROUND(AVG(end_date - start_date + 1), 1) >= 7
order by ROUND(AVG(end_date - start_date + 1), 1) desc,1 desc;