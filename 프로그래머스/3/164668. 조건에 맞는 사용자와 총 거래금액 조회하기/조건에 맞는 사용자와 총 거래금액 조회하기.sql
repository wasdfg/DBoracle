SELECT USER_ID,NICKNAME,sum(price) as TOTAL_SALES
from USED_GOODS_BOARD left join USED_GOODS_USER on WRITER_ID = USER_ID
where status = 'DONE'
group by user_id,nickname
having sum(price) >= 700000
order by 3;