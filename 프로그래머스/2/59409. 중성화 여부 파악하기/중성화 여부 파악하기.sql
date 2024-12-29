SELECT ANIMAL_ID,NAME,(case 
                       when instr(SEX_UPON_INTAKE,'Neutered') > 0 or instr(SEX_UPON_INTAKE,'Spayed') > 0 then 'O'
                       else 'X'
                       end) 중성화
from animal_ins
order by 1;