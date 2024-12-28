SELECT CAR_ID,CAR_TYPE,DAILY_FEE,OPTIONS
from CAR_RENTAL_COMPANY_CAR
where instr(options,'네비게이션') > 0
order by 1 desc;