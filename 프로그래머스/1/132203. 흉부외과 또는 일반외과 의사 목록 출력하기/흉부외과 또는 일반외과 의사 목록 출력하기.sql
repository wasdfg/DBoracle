SELECT DR_NAME,DR_ID,MCDP_CD,to_char(HIRE_YMD,'yyyy-mm-dd') as HIRE_YMD 
from doctor
where mcdp_cd in ('CS','GS')
order by 4 desc,1 asc;