SELECT FACTORY_ID,FACTORY_NAME,ADDRESS 
from food_factory
where substr(address,1,3) = '강원도'
order by 1;