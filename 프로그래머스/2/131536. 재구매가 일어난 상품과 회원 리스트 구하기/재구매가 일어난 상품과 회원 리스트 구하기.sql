SELECT USER_ID,PRODUCT_ID from ONLINE_SALE
group by user_id,product_id
having count(*) >= 2
order by 1,2 desc;