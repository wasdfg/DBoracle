select * from
(SELECT i.name as NAME,i.datetime as DATETIME 
from ANIMAL_INS i left join ANIMAL_OUTS o on i.animal_id = o.animal_id 
where o.datetime is null
order by i.datetime)
where rownum <= 3;