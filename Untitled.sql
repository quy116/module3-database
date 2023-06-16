use quan_ly_sinh_vien;
select studentName  from student
where studentName like "h%";

select startDate from class
wHERE MONTH(StartDate) = 12;
SELECT * FROM subject 
WHERE credit BETWEEN 3 AND 5;
SET SQL_SAFE_UPDATES = 0;
select classId,StudentName from student;
update Student set ClassId = 2 where StudentName = "Hung";
select studentName,SubName,Mark from student
join mark on student.studentid = mark.studentid
join subject on mark.subId = subject.subid
oRDER BY Mark desc, StudentName asc;
