create  database quan_ly_diem_thi;

create table hoc_sinh(
	MaHS varchar(20) primary key ,
    TenHS varchar(50),
    NgaySinh datetime,
    Lop varchar(20),
    GT varchar(20)
);

create table mon_hoc(
	MaMH varchar(20) primary key,
    TenMH varchar(20)
);

create table bang_diem(
	MaHS varchar(20), 
    MaMH varchar(20),
    DiemThi int,
    NgayKT datetime,
    primary key(MaHS,MaMH),
    foreign key (MaHS) references hoc_sinh(MaHS),
    foreign key(MaMH) references mon_hoc(MaMH)
);

create table giao_vien(
	MaGV varchar(20) primary key,
    TenGV varchar(255) ,
    SDT varchar(10)
);

ALTER TABLE mon_hoc ADD MaGV VARCHAR(20);
ALTER TABLE mon_hoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES giao_vien(MaGV);