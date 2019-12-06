-- create table (id auto_increment)
Create table PhongBan(
MaPB varchar2(20) CONSTRAINT pk_MaPB PRIMARY KEY,
TenPB varchar2(100) not null
);
Create table NhanVien(
MaNV NUMBER GENERATED ALWAYS AS IDENTITY,
TenNV varchar2(100) not null,
NgaySinh Date not null,
GioiTinh varchar2(5) not null,
DiaChi varchar2(150) not null,
MaPB varchar2(20) not null,
CONSTRAINT fk_mapb
    FOREIGN KEY (MaPB)
    REFERENCES PhongBan(MaPB)
);
--alter table 
alter table PhongBan 
add TruongPhong varchar2(100) not null;

alter table NhanVien 
add Luong float(20) not null;

alter table NhanVien 
modify DiaChi varchar2(200);
-- Drop table
DROP TABLE NhanVien






