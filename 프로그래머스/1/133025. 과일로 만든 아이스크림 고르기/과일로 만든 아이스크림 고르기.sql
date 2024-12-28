SELECT first_half.flavor 
from first_half left join icecream_info on first_half.flavor = icecream_info.flavor
where total_order > 3000 and INGREDIENT_TYPE = 'fruit_based'
order by total_order desc;