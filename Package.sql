--thủ tục cho biết thông tin lương của nhân viên và tổng lương của phòng ban khi nhập mã nhân viên mã phòng ban .
create or replace package thongtinluong
 as 
 procedure luongnv(v_manv NhanVien.manv%TYPE);
 function tongluong (mapb PhongBan.mapb%TYPE) 
 return number; 
 end; 
 --
create or replace package body thongtinluong 
as 
procedure luongnv(v_manv NhanVien.manv%TYPE) 
as v_luong NhanVien.luong%TYPE; 
begin 
select luong into v_luong from NhanVien where manv= v_manv; 
dbms_output.put_line('luong cua nhan vien nay la:' || v_luong); 
exception 
when no_data_found then 
dbms_output.put_line('ko tim thay nhan vien nay'); 
end luongnv; 
 
function tongluong(v_mapb PhongBan.mapb%TYPE)  
return number 
as tongluongpb number; 
begin  
select sum(luong) into tongluongpb from NhanVien where mapb=v_mapb; 
return tongluongpb; 
exception 
when no_data_found then 
dbms_output.put_line('ko tim thay phong ban'); 
end tongluongpb;
 
end thongtinluong; 
 
