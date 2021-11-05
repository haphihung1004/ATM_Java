Create database ATM
use ATM
go

create table DangNhap
(
    username char(50) constraint PK_DangNhap primary key,
    password int,
    type char(20),
)

create table UserN
(
	CMND char(50) constraint PK_User primary key,
	HoTen nvarchar(30) ,
	GioiTinh char(3) ,
	NgaySinh date,
	NoiSinh nvarchar(50),
  	DiaChi nvarchar(50),
	username char(50),
    soTienTaiKhoan float,
) 

create table RutTien
(
    TimeRut varchar(50) constraint PK_RutTien primary key,
    username char(50) ,
    soTienRut float,
)

create table ChuyenTien
(
   TimeChuyen varchar(50) constraint PK_ChuyenTien primary key,
    username char(50) ,
    userNhan char(50),
    soTienChuyen float,
)
create table NhanTien
(
   TimeNhan varchar(50) constraint PK_NhanTien primary key,
    username char(50) ,
    userChuyen char(50),
    soTienNhan float,
)
--alter table UserN  add constraint FK_User foreign key(username) references DangNhap(username)
--alter table UserN add constraint FK_RutTien  foreign key(username) references RutTien(username)
--alter table UserN add constraint FK_ChuyenTien  foreign key(username) references ChuyenTien(username)
--alter table UserN add constraint FK_NhanTien  foreign key(username) references NhanTien(username)