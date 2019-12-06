-- tính tổng lương của phòng ban khi nhập mã phòng
Create or replace function tongluong(maphongban in number) 
return number 
as  
v_luong number; 
begin 
select sum(luong) 
into v_luong 
from NhanVien 
where mapb=maphongban; 
return v_luong;   
exception 
when no_data_found 
then 
return('Du lieu khong tim thay'); 
when others then 
return('loi ham'); 
end;  
set serveroutput on   
show error; 
select column_name, data_type, data_length 
from user_tab_columns 
where table_name='NhanVien'; 
SELECT mapb 
FROM PhongBan; 
set serveroutput on 
set verify off 
execute dbms_output.put_line('Tong luong la: '||tongluong(&maphongban)); 