SELECT outs.ANIMAL_ID,outs.ANIMAL_TYPE,outs.NAME
from ANIMAL_INS ins right join ANIMAL_OUTS outs
    on ins.ANIMAL_ID = outs.ANIMAL_ID
where ins.SEX_UPON_INTAKE != outs.SEX_UPON_OUTCOME
order by 1;