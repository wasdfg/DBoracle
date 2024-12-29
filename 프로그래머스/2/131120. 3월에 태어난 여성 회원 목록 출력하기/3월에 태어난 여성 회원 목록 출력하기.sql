SELECT MEMBER_ID,MEMBER_NAME,GENDER,to_char(DATE_OF_BIRTH,'yyyy-mm-dd') as DATE_OF_BIRTH
from MEMBER_PROFILE
where extract(month from DATE_OF_BIRTH) = 3 and gender = 'W' and tlno is not null
order by 1;