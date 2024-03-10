create database JoinConcept;
use JoinConcept;

create table student(
	id int primary key,
    name varchar(50)
);

insert into student(id,name)
values
(101, "Fahim"),
(102, "Tushar"),
(103, "Nayeem"),
(104, "Joy"),
(105, "Emon"),
(106, "Shourov");

select * from student;

create table course(
	id int,
    course varchar(50),
    foreign key(id) references student(id)
);

insert into course(id,course)
values
(101, "Math"),
(102, "Story"),
(104, "Physics"),
(106, "Programming");

select * from course;

alter table course change id student_id int;


select * from student inner join course on student.id=course.student_id;
select id, name, course from student inner join course on student.id=course.student_id;

select * from student left join course on student.id=course.student_id;
select id, name, course from student left join course on student.id=course.student_id; 

select * from student right join course on student.id=course.student_id;
select id, name, course from student right join course on student.id=course.student_id;


select * from student left join course on student.id=course.student_id
union
select * from student right join course on student.id=course.student_id;


select * from student left join course on student.id=course.student_id where course.student_id is null;

select * from student right join course on student.id=course.student_id where student.id is null;

select * from student as a join student as b on a.id=b.id;

create table employee(
	id int primary key,
    name varchar(50),
    manager_id int
);

insert into employee
values
(101,"adam", 103),
(102,"bob", 104),
(103,"casey", null),
(104,"donald", 103);

select * from employee;

select a.name as manager, b.name from employee as a join employee as b on a.id=b.manager_id;





