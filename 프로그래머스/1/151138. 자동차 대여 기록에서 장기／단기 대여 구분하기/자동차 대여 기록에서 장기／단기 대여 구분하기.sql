SELECT HISTORY_ID,CAR_ID,to_char(START_DATE,'yyyy-mm-dd') as START_DATE,to_char(END_DATE,'yyyy-mm-dd') as END_DATE,(case
                    when END_DATE - start_date+1 >= 30 then '장기 대여' 
                    else '단기 대여' 
                  end) as RENT_TYPE 
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where to_char(start_date,'yyyy-mm') = '2022-09'
order by 1 desc;