create database University;
use University;

create table departments(
	id int primary key,
    dept_name varchar(50) not null
);

insert into departments(id,dept_name)
values
(101, "CSE"),
(102, "EEE"),
(103, "Civil"),
(104, "Arch");

select * from departments;

create table teachers(
	id int primary key,
    name varchar(50) not null,
    dept_id int,
    foreign key(dept_id) references departments(id)
    on delete cascade
    on update cascade
);


insert into teachers(id,name,dept_id)
values
(1,"Tanvir", 101),
(2, "Mahmud", 102),
(3, "Fahim", 103),
(4, "Jerin", 101),
(5, "Tasnim", 104),
(6, "Ayesha", 102);

select * from teachers;

select dept_id, count(id) from teachers group by dept_id;

set sql_safe_updates = 0;

delete from departments where id=104;

update departments set id = 105 where id=103;



show tables;