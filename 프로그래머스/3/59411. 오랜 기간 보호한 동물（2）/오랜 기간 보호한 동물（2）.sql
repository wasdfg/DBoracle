select *
from (SELECT o.ANIMAL_ID as ANIMAL_ID,o.NAME as NAME
from ANIMAL_INS i left join ANIMAL_OUTS o on i.ANIMAL_ID = o.ANIMAL_ID
where o.datetime is not null
order by (o.datetime-i.datetime) desc)
where rownum <= 2;