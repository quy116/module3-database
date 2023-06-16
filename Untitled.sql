use quan_ly_sinh_vien;
select studentName  from student
where studentName like "h%";

select startDate from class
wHERE MONTH(StartDate) = 12;
SELECT * FROM subject 
WHERE credit BETWEEN 3 AND 5;
select classId,StudentName from student;
	
update Student set ClassId = 2 where StudentName = "Hung";
select classId,SubName,Mark from student;
