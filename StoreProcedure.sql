-- Hiển thị thông tin phòng ban khi nhập mã phòng ban  
create or replace procedure thongtinphongban(v_mapb number,  ten out PhongBan.tenpb%type) 
as   
begin      
select  tenpb into ten     
from PhongBan     
where mapb=v_mapb;     
dbms_output.put_line('Ten phong ban: '||ten);     
exception when no_data_found     
then dbms_output.put_line('Khong co phong ban');   
end;    
set serveroutput on 
declare ten PhongBan.tenpb%type; 
begin    
DEPT_INFO(&v_mapb, ten); 
end; 
--  xóa nhân viên khi nhập mã nhân viên
create or replace procedure xoanv(manhanvien number) 
as   
begin     
delete from NhanVien 
where manv=manhanvien;       
dbms_output.put_line('Da xoa'||manhanvien||'thanh cong!');   
end; 
 