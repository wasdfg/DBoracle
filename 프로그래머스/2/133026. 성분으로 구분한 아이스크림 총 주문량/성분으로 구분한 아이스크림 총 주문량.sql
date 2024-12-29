SELECT INGREDIENT_TYPE,sum(TOTAL_ORDER) as TOTAL_ORDER
from FIRST_HALF f left join ICECREAM_INFO i on f.flavor = i.flavor
group by INGREDIENT_TYPE
order by 2;