SELECT PT_NAME,PT_NO,GEND_CD,AGE,(case 
                                  when tlno is null then 'NONE'
                                  else tlno
                                  end) as TLNO 
from PATIENT
where age <= 12 and gend_cd = 'W'
order by 4 desc,1;