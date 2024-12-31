SELECT '/home/grep/src/' || b.board_id || '/' || file_id || file_name || file_ext as FILE_PATH
from USED_GOODS_BOARD b
left join USED_GOODS_FILE f
    on b.board_id = f.board_id
where views = (select max(views) from USED_GOODS_BOARD)
order by file_id desc;