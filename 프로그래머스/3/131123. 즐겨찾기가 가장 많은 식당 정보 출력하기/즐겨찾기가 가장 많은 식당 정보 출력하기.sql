SELECT FOOD_TYPE,REST_ID,REST_NAME,FAVORITES
from REST_INFO
where (food_type,favorites) in (select food_type,max(favorites) 
                                from rest_info
                                group by food_type)
order by 1 desc;