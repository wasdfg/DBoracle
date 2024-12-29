SELECT trunc((price/10000))*10000 as PRICE_GROUP,count(*) as PRODUCTS
from product
group by trunc((price/10000))
order by price_group;