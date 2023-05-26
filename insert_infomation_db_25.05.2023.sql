use demo;

-- Insert CHUDE
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CHUDE (MACD, TENCD) VALUES ('NCPT', 'Nghiên cứu phát triển');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CHUDE (MACD, TENCD) VALUES ('QLGD', 'Quản lý giáo dục');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CHUDE (MACD, TENCD) VALUES ('ƯDCN', 'Ứng dụng công nghệ');-- 

--  SQLINES DEMO *** , TENKHOA, NAMTL, PHONG, DIENTHOAI, NGAYNHANCHUC)
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, NGAYNHANCHUC) VALUES ('CNTT', 'Công nghệ thông tin', '1995', 'B11', '0838123456', CAST('2005-02-20' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, NGAYNHANCHUC) VALUES ('SH', ' Hóa học', '1980', 'B31', '0838454545', CAST('2000-10-11' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, NGAYNHANCHUC) VALUES ('HH', 'Sinh học', '1980', 'B41', '0838456465', CAST('2001-10-15' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO KHOA (MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, NGAYNHANCHUC) VALUES ('VL', 'Vật lý', '1976', 'B21', '0838223223', CAST('2003-09-18' AS Date));


--  SQLINES DEMO ***  TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC)
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('CNTT', 'Công nghệ tri thức', 'B15', '0838126126', 'CNTT', NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('HHC', 'Hóa hữu cơ', 'B44', '838222222', 'HH', NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('HL', 'Hóa lý', 'B42', '0838878787', 'HH', NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('HPT', 'Hóa phân tích', 'B43', '0838777777', 'HH', CAST('2007-10-15' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('HTTT', 'Hệ thống thông tin', 'B13', '0838125125', 'CNTT', CAST('2004-09-20' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('MMT', 'Mạng máy tính', 'B16', '0838676767', 'CNTT', CAST('2005-05-15' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('SH', 'Sinh hóa', 'B33', '0838898989', 'SH', NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('VLĐT', 'Vật lý điện tử', 'B23', '0838234234', 'VL', NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('VLƯD', 'Vật lý ứng dụng', 'B24', '0838454545', 'VL', CAST('2006-02-18' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO BOMON (MABM, TENBM, PHONG, DIENTHOAI, MAKHOA, NGAYNHANCHUC) VALUES ('VS', 'Vi sinh', 'B32', '0838909090', 'SH', CAST('2007-01-01' AS Date));

-- Insert GIAOVIEN
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('001', 'Nguyễn Hoài An', CAST(2000.0 AS decimal(10, 1)), 'Nam', CAST('1973-02-15' AS Date), '25/3 Lạc Long Quân, Q.10, TP HCM', NULL, 'MMT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('002', 'Trần Trà Hương', CAST(2500.0 AS decimal(10, 1)), 'Nữ', CAST('1960-06-20' AS Date), '125 Trần Hưng Đạo, Q.1, TP HCM', NULL, 'HTTT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('003', 'Nguyễn Ngọc Ánh', CAST(2200.0 AS decimal(10, 1)), 'Nữ', CAST('1975-05-11' AS Date), '12/21 Võ Văn Ngân Thủ Đức, TP HCM', '002', 'HTTT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('004', 'Trương Nam Sơn', CAST(2300.0 AS decimal(10, 1)), 'Nam', CAST('1959-06-20' AS Date), '215 Lý Thường Kiệt, TP Biên Hòa', NULL, 'VS');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('005', 'Lý Hoàng Hà', CAST(2500.0 AS decimal(10, 1)), 'Nam', CAST('1954-10-23' AS Date), '22/5 Nguyễn Xí, Q.Bình Thạnh, TP HCM', NULL, 'VLĐT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('006', 'Trần Bạch Tuyết', CAST(1500.0 AS decimal(10, 1)), 'Nữ', CAST('1980-05-20' AS Date), '127 Hùng Vương, TP Mỹ Tho', '004', 'VS');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('007', 'Nguyễn An Trung', CAST(2100.0 AS decimal(10, 1)), 'Nam', CAST('1976-06-05' AS Date), '234 3/2, TP Biên Hòa', NULL, 'HPT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('008', 'Trần Trung Hiếu', CAST(1800.0 AS decimal(10, 1)), 'Nam', CAST('1977-08-06' AS Date), '22/11 Lý Thường Kiệt', '007', 'HPT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('009', 'Trần Hoàng Nam', CAST(2000.0 AS decimal(10, 1)), 'Nam', CAST('1975-11-22' AS Date), '234 Trần Não, An Phú, TP HCM', '001', 'MMT');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GIAOVIEN (MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES ('010', 'Phạm Nam Thanh', CAST(1500.0 AS decimal(10, 1)), 'Nam', CAST('1980-12-12' AS Date), '221 Hùng Vương, Q.5, TP HCM', '007', 'HPT');

--  SQLINES DEMO *** KHOA)
UPDATE KHOA SET KHOA.TRUONGKHOA = '002' WHERE KHOA.MAKHOA = 'CNTT';
UPDATE KHOA SET KHOA.TRUONGKHOA = '007' WHERE KHOA.MAKHOA = 'HH';
UPDATE KHOA SET KHOA.TRUONGKHOA = '004' WHERE KHOA.MAKHOA = 'SH';
UPDATE KHOA SET KHOA.TRUONGKHOA = '005' WHERE KHOA.MAKHOA = 'VL';

--  SQLINES DEMO *** GBM)
UPDATE BOMON SET BOMON.TRUONGBM = '007' WHERE BOMON.MABM = 'HPT';
UPDATE BOMON SET BOMON.TRUONGBM = '002' WHERE BOMON.MABM = 'HTTT';
UPDATE BOMON SET BOMON.TRUONGBM = '001' WHERE BOMON.MABM = 'MMT';
UPDATE BOMON SET BOMON.TRUONGBM = '005' WHERE BOMON.MABM = 'VLƯD';
UPDATE BOMON SET BOMON.TRUONGBM = '004' WHERE BOMON.MABM = 'VS';

-- Insert GV_DT
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('001', '0838912112');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('001', '0903123123');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('002', '0913454545');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('003', '0838121212');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('003', '0903656565');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('003', '0937125125');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('006', '0937888888');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('008', '0653717171');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO GV_DT (MAGV, DIENTHOAI) VALUES ('008', '0913232323');

-- Insert DETAI
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('001', 'HTTT quản lý các trường ĐH', 'ĐHQG', CAST(20.0 AS decimal(10, 1)), CAST('2004-10-20' AS Date), CAST('2008-10-20' AS Date), 'QLGD', '002');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('002', 'HTTT quản lý giáo vụ cho một khoa', 'Trường', CAST(20.0 AS decimal(10, 1)), CAST('2000-10-12' AS Date), CAST('2001-10-12' AS Date), 'QLGD', '002');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('003', 'Nghiên cứu chế tạo sợi Nanô Platin', 'ĐHQG', CAST(300.0 AS decimal(10, 1)), CAST('2008-05-15' AS Date), CAST('2010-05-15' AS Date), 'NCPT', '005');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('004', 'Tạo vật liệu sinh học bằng màng ối người', 'Nhà nước', CAST(100.0 AS decimal(10, 1)), CAST('2007-01-01' AS Date), CAST('2009-12-31' AS Date), 'NCPT', '004');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('005', 'Ứng dụng hóa học xanh', 'Trường', CAST(200.0 AS decimal(10, 1)), CAST('2003-10-10' AS Date), CAST('2004-12-10' AS Date), 'ƯDCN', '007');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('006', 'Nghiên cứu tế bào gốc', 'Nhà nước', CAST(4000.0 AS decimal(10, 1)), CAST('2006-10-20' AS Date), CAST('2009-10-20' AS Date), 'NCPT', '004');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO DETAI (MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES ('007', 'HTTT quản lý thư viện ở các trường đại học', 'Trường', CAST(20.0 AS decimal(10, 1)), CAST('2009-05-10' AS Date), CAST('2010-05-10' AS Date), 'QLGD', '001');

-- Insert CONGVIEC
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('001', 1, 'Khởi tạo và Lập kế hoạch', CAST('2007-10-20' AS Date), CAST('2008-12-20' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('001', 2, 'Xác định yêu cầu', CAST('2008-12-21' AS Date), CAST('2008-03-21' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('001', 3, 'Phân tích hệ thống', CAST('2008-03-22' AS Date), CAST('2008-05-22' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('001', 4, 'Thiết kế hệ thống', CAST('2008-05-23' AS Date), CAST('2008-06-23' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('001', 5, 'Cài đặt thử nghiệm', CAST('2008-06-24' AS Date), CAST('2008-10-20' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('002', 1, 'Khởi tạo và Lập kế hoạch', CAST('2009-05-10' AS Date), CAST('2009-07-10' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('002', 2, 'Xác định yêu cầu', CAST('2009-07-11' AS Date), CAST('2009-10-11' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('002', 3, 'Phân tích hệ thống', CAST('2009-10-12' AS Date), CAST('2009-12-20' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('002', 4, 'Thiết kế hệ thống', CAST('2009-12-21' AS Date), CAST('2010-03-22' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('002', 5, 'Cài đặt thử nghiệm', CAST('2010-03-23' AS Date), CAST('2010-05-10' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('006', 1, 'Lấy mẫu', CAST('2006-10-20' AS Date), CAST('2007-02-20' AS Date));
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CONGVIEC (MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES ('006', 2, 'Nuôi cấy', CAST('2007-02-21' AS Date), CAST('2008-08-21' AS Date));

-- Insert THAMGIADT
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('001', '002', 1, CAST(0.0 AS decimal(5, 1)), NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('001', '002', 2, CAST(2.0 AS decimal(5, 1)), NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('002', '001', 4, CAST(2.0 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('003', '001', 1, CAST(1.0 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('003', '001', 2, CAST(0.0 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('003', '001', 4, CAST(1.0 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('003', '002', 2, CAST(0.0 AS decimal(5, 1)), NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('004', '006', 1, CAST(0.0 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('004', '006', 2, CAST(1.0 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('006', '006', 2, CAST(1.5 AS decimal(5, 1)), 'Đạt');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('009', '002', 3, CAST(0.5 AS decimal(5, 1)), NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO THAMGIADT (MAGV, MADT, STT, PHUCAP, KETQUA) VALUES ('009', '002', 4, CAST(1.5 AS decimal(5, 1)), NULL);

-- Insert NGUOITHAN
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('001', 'Hùng', CAST('1990-01-14' AS Date), 'Nam');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('001', 'Thủy', CAST('1994-12-05' AS Date), 'Nữ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('003', 'Hà', CAST('1997-09-03' AS Date), 'Nữ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('003', 'Thu', CAST('1998-09-03' AS Date), 'Nữ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('007', 'Mai', CAST('2003-03-26' AS Date), 'Nữ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('007', 'Vy', CAST('2000-02-14' AS Date), 'Nữ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('008', 'Nam', CAST('1991-05-06' AS Date), 'Nam');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('009', 'An', CAST('1996-08-19' AS Date), 'Nam');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO NGUOITHAN (MAGV, TEN, NGSINH, PHAI) VALUES ('010', 'Nguyệt', CAST('2006-01-14' AS Date), 'Nữ');