CREATE DATABASE College;
USE College;

CREATE TABLE students(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

DROP TABLE students;
SHOW TABLES;

INSERT INTO students
VALUES
(101, "Fahim", 90, "A", "Rajshahi"),
(102, "Tanvir", 80, "B", "Rajshahi"),
(103, "Mahmud", 75, "C", "Dhaka"),
(104, "Rahim", 60, "D", "Rajbari"),
(105, "Karim", 50, "E", "Munshigang"),
(106, "Abdullah", 95, "A", "Dhaka");


SELECT * FROM students;
SELECT name, marks, grade FROM students;

select distinct city from students;
select distinct marks from students;
select distinct grade from students;


select * from students where marks > 80;
select * from students where city = "Rajshahi";

select * from students where marks + 10 > 100;

select * from students where city = "Dhaka" and marks > 70;
select * from students where city = "Dhaka" or marks > 80;
select * from students where marks between 70 and 80;
select * from students where city in ("Dhaka", "Rajshahi");
select * from students where city not in ("Dhaka", "Rajshahi");

select * from students limit 3;
select * from students where marks > 50 limit 3;

select * from students order by city asc;
select * from students order by marks asc;
select * from students order by grade asc;

select * from students order by city desc;
select * from students order by marks desc;
select * from students order by grade desc;

select * from students order by marks desc limit 3;

select max(marks) from students;
select min(marks) from students;
select sum(marks) from students;
select avg(marks) from students;
select count(marks) from students;

select city, count(name) from students group by city;
select city, grade, count(rollno) from students group by city, grade;
select city, avg(marks) from students group by city;

select city, avg(marks) from students group by city order by city asc;
select city, avg(marks) from students group by city order by avg(marks) asc;
select city, avg(marks) from students group by city order by avg(marks) desc;

select city, count(name) from students group by city having max(marks) >= 90;
select city, count(rollno) from students where grade = "A" group by city having max(marks) >= 90 order by city asc;

set sql_safe_updates=1;
set sql_safe_updates=0;

update students set marks=96 where name='Mahmud';
update students set grade='A' where marks >= 80;
update students set grade= 'O' where marks >= 90;
update students set marks = marks+1;

delete from students where name = 'Rahim';
delete from students where marks < 80;
delete from students where rollno = 106;

alter table students add column age int not null default 18;
alter table students add column address varchar(255);
alter table students drop column address;
alter table students modify column age varchar(2);
alter table students rename student_info;
alter table student_info rename students;
alter table students change age stu_age int not null default 20;

truncate table students;


alter table students change name full_name varchar(50);
delete from students where marks < 80;
alter table students drop column grade;














