use `student-management`;

create table `student-management`.`student`(
	studentId int not null primary key,
    studentName varchar(45) null
);

create table `student-management`.`teacher`(
	teacherID int not null primary key,
    teacherName varchar(45) null,
    age int null ,
    country varchar(255) null
);