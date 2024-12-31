SELECT distinct(user_id) as USER_ID,NICKNAME,(city || ' ' || street_address1 || ' ' || STREET_ADDRESS2) as 전체주소,REGEXP_REPLACE(tlno, '([0-9]{3})([0-9]{4})([0-9]{4})', '\1-\2-\3') as 전화번호 
from USED_GOODS_BOARD b left join USED_GOODS_USER u on b.writer_id = u.user_id
where user_id in (select writer_id 
                    from used_goods_board 
                    group by writer_id
                   having(count(*) > 2))
order by 1 desc;