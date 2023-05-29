use quanlysinhvien;

#Hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;

#Tính điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S
         join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

#Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
-- Bài tập
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from subject
where subject.Credit = (SELECT MAX(subject.credit) from subject);
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from subject
join mark where subject.SubID = mark.subid and mark.Mark = (SELECT MAX(mark.Mark) from mark);
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select *, (select avg(mark) from student join mark on student.StudentID = mark.StudentID order by mark.StudentID) as avgStudent from student
where student.StudentID = any (select distinct student.StudentID from student join mark on student.StudentID = mark.StudentID)
order by student.StudentID;