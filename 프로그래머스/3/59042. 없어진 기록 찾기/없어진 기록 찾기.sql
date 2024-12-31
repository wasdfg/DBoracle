SELECT o.ANIMAL_ID,o.NAME
from animal_ins i right join animal_outs o on i.ANIMAL_ID = o.ANIMAL_ID
where i.ANIMAL_ID is null
order by 1;