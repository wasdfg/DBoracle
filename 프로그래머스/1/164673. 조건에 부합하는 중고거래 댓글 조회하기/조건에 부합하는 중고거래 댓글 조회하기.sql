SELECT TITLE,b.BOARD_ID,REPLY_ID,r.WRITER_ID,r.CONTENTS,to_char(r.CREATED_DATE,'yyyy-mm-dd') CREATED_DATE 
from USED_GOODS_REPLY r left join USED_GOODS_BOARD b on b.board_id = r.board_id
where to_char(b.created_date,'yyyy-mm') = '2022-10'
order by created_date,title;