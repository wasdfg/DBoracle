SELECT 
    car_id,
    CASE 
        WHEN MAX(CASE 
                     WHEN START_DATE <= TO_DATE('2022-10-16', 'yyyy-mm-dd') 
                          AND END_DATE >= TO_DATE('2022-10-16', 'yyyy-mm-dd') 
                     THEN '대여중'
                     ELSE '대여 가능'
                 END) = '대여중' 
        THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY car_id
ORDER BY car_id DESC;