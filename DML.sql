--insert data
INSERT INTO PhongBan values('GPPM1','Giải pháp phần mềm 1','Nguyễn Văn A');
INSERT INTO PhongBan values('GPPM2','Giải pháp phần mềm 2','Nguyễn Văn B');
INSERT INTO NhanVien(TenNV,NgaySinh,Gioitinh,diachi,Mapb) values('Nguyễn Đình Dần','06-NOV-1998','Nam','Hưng Yên','GPPM1');
INSERT INTO NhanVien(TenNV,NgaySinh,Gioitinh,diachi,Mapb) values('Nguyễn Bá Mạnh','24/JUN/1998','Nam','Hưng Yên','GPPM2');


--update data
UPDATE NhanVien set DiaChi = 'Hà Nội' where MaNV= 2 ; 


--Delete data
DELETE FROM NhanVien NV where NV.MAPB = 'GPPM2'  ; 

Commit;