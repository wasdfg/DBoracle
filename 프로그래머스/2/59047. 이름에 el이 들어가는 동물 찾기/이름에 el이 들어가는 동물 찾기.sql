SELECT ANIMAL_ID,NAME from ANIMAL_INS
where animal_type = 'Dog' and instr(lower(name),'el') > 0
order by name;