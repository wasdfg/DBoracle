select ANIMAL_ID,NAME,to_char(datetime,'yyyy-mm-dd') 날짜 
from animal_ins
order by 1;