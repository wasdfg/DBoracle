SELECT 
    extract(month from START_DATE) as MONTH,
    CAR_ID,
    count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where car_id in (select car_id
                    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                 where to_char(start_date,'yyyy-mm-dd') >= '2022-08-01' and to_char(start_date,'yyyy-mm-dd') <= '2022-10-31'
                 group by car_id
                 having count(*) >= 5
                )
and start_date >= to_date('2022-08-01', 'YYYY-MM-DD')
and start_date <= to_date('2022-10-31', 'YYYY-MM-DD')
group by extract(month from START_DATE),car_id
having count(*) >= 1
order by 1,2 desc;