SELECT cast(to_char(datetime,'hh24') as number) as HOUR,count(*) as COUNT 
from animal_outs
where to_char(datetime,'hh24') between 9 and 19
group by to_char(datetime,'hh24')
order by HOUR;