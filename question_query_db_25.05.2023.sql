-- ***Dùng các hàm gộp 
-- Câu 1: Cho biết số lượng giáo viên của toàn trường
select count(MAGV) from giaovien;
-- Câu 2: Cho biết số lượng giáo viên của bộ môn HTTT
select count(magv) from giaovien where MABM = 'httt';
-- Câu 3: Tính số lượng giáo viên có người quản lý về mặt chuyên môn
select count(magv) from giaovien where GVQLCM is not null;
-- Câu 4: Tính số lượng giáo viên làm nhiệm vụ quản lý chuyên môn cho giáo viên khác mà
-- thuộc bộ môn HTTT.
select count(magv) from giaovien where GVQLCM is not null and MABM = 'httt';
-- Câu 5:  Tính lương trung bình của giáo viên bộ môn Hệ thống thông tin
select avg(LUONG) as average_salary from giaovien;
-- ***Dùng group by
-- Câu 6: Với mỗn bộ môn cho biết bộ môn (MAMB) và số lượng giáo viên của bộ môn đó.
select mabm , count(magv) from giaovien group by mabm;
-- Câu 7: Với mỗi giáo viên, cho biết MAGV và số lượng công việc mà giáo viên đó có tham
-- gia.
select gv.magv ,  gv.hoten,count(madt) from thamgiadt tgdt join giaovien gv on gv.magv=tgdt.magv group by magv ;
-- Câu 8: Với mỗi giáo viên, cho biết MAGV và số lượng đề tài mà giáo viên đó có tham gia.
select gv.magv , gv.hoten,count(madt) as 'số lượng công việc' from thamgiadt tgdt 
join giaovien gv on gv.magv = tgdt.magv 
group by magv;
-- Câu 9:  Với mỗi bộ môn, cho biết số đề tài mà giáo viên của bộ môn đó chủ trì

-- Câu 10: Với mỗn bộ môn cho biết tên bộ môn và số lượng giáo viên của bộ môn đó.
select bm.mabm, count(magv) , bm.TENBM from giaovien gv
join bomon bm on bm.mabm = gv.mabm
group by bm.mabm;
-- ***Dùng GROUP BY + HAVING
-- Câu 11: Cho biết những bộ môn từ 2 giáo viên trở lên.
select bm.mabm, count(magv) from giaovien as gv
join bomon as bm on bm.mabm = gv.mabm
group by bm.mabm
having count(magv) >=2;
-- Câu 12: Cho tên những giáo viên và số lượng đề tài của những GV tham gia từ 3 đề tài trở
-- lên.
select gv.hoten, count(tgdt.madt) from thamgiadt as tgdt
join giaovien gv on gv.MAGV = tgdt.MAGV
group by gv.hoten
having count(tgdt.MADT) >= 3;
-- Câu 13: Cho biết số lượng đề tài được thực hiện trong từng năm.
select count(madt) as 'Số lượng đề tài',year(NGAYBD) as 'Năm thực hiện' from detai group by year(ngaybd);
-- ************************************************A
-- Dùng truy vấn con + mệnh đề SELECT
-- Câu A1: Với mỗi bộ môn, cho biết tên bộ môn và số lượng giáo viên của bộ môn đó.
select bm.mabm , bm.tenbm , count(gv.mabm) as 'Số lượng giáo viên' from giaovien gv join bomon bm on gv.MABM = bm.MABM  group by gv.mabm;
-- Dùng truy vấn con + mệnh đề FROM
-- Câu A2: Cho biết họ tên và lương của các giáo viên bộ môn HTTT
select hoten , luong from giaovien where mabm= 'httt';
-- Dùng truy vấn con + mệnh đề WHERE
-- Câu A3: Cho biết những giáo viên có lương lớn hơn lương của giáo viên có MAGV=‘001’
select hoten , luong from giaovien gv where gv.luong > (select gv1.luong from giaovien gv1 where gv1.magv = '001'); 
-- Câu A4: Cho biết họ tên những giáo viên mà không có một người thân nàoaa6
select DISTINCT(gv.hoten) from giaovien gv LEFT OUTER JOIN nguoithan nt on gv.magv = nt.magv where nt.magv is null;
-- Câu A5: Cho những giáo viên có tham gia đề tài
select gv.magv , hoten from giaovien gv join thamgiadt tgdt on gv.magv=tgdt.magv
 where gv.magv=tgdt.magv group by gv.magv; 
-- Câu A6: Cho những giáo viên có lương nhỏ nhất
select   magv , hoten , luong from giaovien where luong = (select min(luong) from giaovien);
-- Câu A7: Cho những giáo viên có lương cao hơn tất cả các giáo viên của bộ môn HTTT
select magv , hoten , luong from giaovien where luong >(select max(luong) from giaovien) and mabm = 'HTTT';
-- Câu A8: Cho biết bộ môn (MABM) có đông giáo viên nhất 
select mabm, count(mabm) as 'So luong giao vien' from giaovien group by mabm limit 1;
-- Câu A9: Cho biết họ tên những giáo viên mà không có một người thân nào. (Sử dụng ALL
-- thay vì NOT IN)
select * from giaovien gv where gv.magv != all(select nt.magv from nguoithan nt where nt.magv is not null);
-- Câu A10: Cho biết họ tên những giáo viên có tham gia đề tài. (Sử dụng = ANY thay vì IN)
select magv , hoten from giaovien gv where gv.magv = any(select tgdt.magv from thamgiadt tgdt where tgdt.magv is not null);	
-- Câu A11: Cho biết các giáo viên có tham gia đề tài.
-- Câu A12: Cho biết các giáo viên không có người thân
-- Câu A14: Cho biết những giáo viên có lương lớn hơn lương trung bình của bộ môn mà giáo
-- viên đó làm việc.
SELECT * 
FROM giaovien gv
where gv.LUONG > (select avg(gv1.LUONG) from giaovien gv1 where gv.MABM = gv1.MABM);

-- cach 2:
SELECT * 
FROM giaovien gv join (
	SELECT MABM, avg(LUONG) as ltb
	FROM giaovien
	group by MABM
) as tb_luong on gv.MABM = tb_luong.MABM
where gv.LUONG > tb_luong.ltb;
-- Câu A16: Cho biết những đề tài mà giáo viên ‘001’ không tham gia.
select madt , tendt from detai where madt not in (select madt from thamgiadt where MAGV = '001');
-- Câu A17: Cho biết họ tên những giáo viên có vai trò quản lý về mặt chuyên môn với các giáo
-- viên khác
SELECT * 
FROM giaovien gv
where gv.MAGV IN (select GVQLCM from giaovien gv2 where GVQLCM is not null); 	
-- Câu A18: Cho biết những giáo viên có lương lớn nhất.
select *  from giaovien gv1 where  gv1.luong =  (select max(gv2.luong) from giaovien gv2);
-- Câu A19: Cho biết những bộ môn (MABM) có đông giáo viên 
select gv1.mabm , count(gv1.mabm) as 'so luong giao vien' from giaovien gv1 group by gv1.mabm limit 1;
-- Câu A20: Cho biết những tên bộ môn, họ tên của trưởng bộ môn và số lượng giáo viên của
-- bộ môn có đông giáo viên nhất
select bm.TENBM, gv2.HOTEN, count(gv1.MABM) as soluonggiaovienmax
from bomon bm
join giaovien gv2 on bm.TRUONGBM = gv2.MAGV
join giaovien gv1 on bm.MABM = gv1.MABM
group by gv1.MABM
having soluonggiaovienmax = (SELECT MAX(count) FROM (SELECT COUNT(gv1.MABM) as count FROM giaovien gv1 GROUP BY gv1.MABM) as counts);
-- Câu A21: Cho biết những giáo viên có lương lớn hơn mức lương trung bình của giáo viên bộ
-- môn Hệ thống thông tin mà không trực thuộc bộ môn hệ thống thông tin
-- Câu A22: Cho tên biết đề tài có đông giáo viên tham gia nhất
-- viên bộ môn Hệ thống thông tin mà không trực thuộc bộ môn hệ thống thông tin
-- ************************************************B
-- Câu B2: Tìm các giáo viên không tham gia đề tài nào
-- Câu B3: Tìm các giáo viên vừa tham gia đề tài vừa là trưởng bộ môn.
-- Câu B4: Liệt kê những giáo viên có tham gia đề tài và những giáo viên là trưởng bộ môn.
SELECT distinct giaovien.MAGV 
FROM giaovien 
cross join bomon, thamgiadt where giaovien.MAGV = bomon.TRUONGBM or giaovien.MAGV = thamgiadt.MAGV
ORDER BY giaovien.MAGV;
-- Câu B5: Tìm các giáo viên (MAGV) mà tham gia tất cả các đề tài
-- Câu B6: Tìm các giáo viên (MAGV) mà tham gia tất cả các đề tài (Dùng NOT EXISTS)
select gv.magv from giaovien gv
where not exists (select tgdt.magv from thamgiadt tgdt where gv.magv not in (select thamgiadt.MAGV from thamgiadt))
order by gv.magv;
-- Câu B7: Tìm các giáo viên (MAGV) mà tham gia tất cả các đề tài (Dùng NOT EXISTS)
-- Câu B9: Tìm tên các giáo viên ‘HTTT’ mà tham gia tất cả các đề tài thuộc chủ đề ‘QLGD


-- ADVANCED
-- Cho biết tên giáo viên và tên của giáo viên có nhiều người thân nhất
-- Cho biết tên của giáo viên lớn tuổi nhất của bộ môn hệ thống thông tin
-- Cho biết tên những đề tài mà giáo viên Nguyễn Hoài An chưa tham gia
-- Cho biết tên của giáo viên chủ nhiệm nhiều đề tài nhất.
-- Cho biết tên giáo viên và tên bộ môn của giáo viên tham gia nhiều đề tài nhất
-- Cho biết tên đề tài nào mà được tất cả giáo viên của bộ môn hóa hữu cơ tham gia