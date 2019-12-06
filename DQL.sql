SELECT * FROM NhanVien;
--
SELECT MaNV,TenNV,NgaySinh From NhanVien  Where DiaChi = 'Hà Nội' or Diachi='Hưng Yên' ;
--
Select * From NhanVien Where TenNV like '%D%';
--
Select nv.mapb, pb.tenpb, 
count(*) from(select mapb from NhanVien) nv inner join
(select mapb,tenpb from PhongBan) pb on nv.mapb= pb.mapb
group by nv.mapb, pb.tenpb;