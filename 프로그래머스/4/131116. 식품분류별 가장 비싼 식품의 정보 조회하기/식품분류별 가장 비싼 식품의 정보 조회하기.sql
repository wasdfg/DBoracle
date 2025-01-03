SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM (
    SELECT CATEGORY, PRICE, PRODUCT_NAME,
           ROW_NUMBER() OVER (PARTITION BY CATEGORY ORDER BY PRICE DESC) AS RN
    FROM FOOD_PRODUCT
    where category in ('과자','국','김치','식용유')
) 
WHERE RN = 1
order by 2 desc;