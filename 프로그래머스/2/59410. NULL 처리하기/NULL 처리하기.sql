SELECT ANIMAL_TYPE,(case when name is null then 'No name'
                   else name
                   end) NAME,SEX_UPON_INTAKE
from animal_ins
order by animal_id;