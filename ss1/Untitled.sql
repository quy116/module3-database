CREATE SCHEMA `student-management` ; 
create table class(id int primary key , name varchar(50));
insert into class (id,name)
values(12,"C0023G1"),(8,"C0123G1"),(6,"C0223G1"),(7,"C0323G1");
create table Teacher(id int primary key ,name varchar(50),age int,country varchar(50));
insert into Teacher(id,name,age,country)
values(10,"trung",20,"VN");


