create database business;
use business;

create table employee(
	customer_id int primary key,
    customer varchar(255) not null,
    mode varchar(50) not null,
    city varchar(50) not null
);

insert into employee(customer_id,customer,mode,city)
values
(101, 'Olivia Barrett','Netbanking','Portland'),
(102, 'Ethan', 'Credit Card','Brazil'),
(103, 'Fahim', 'Credit Card', 'Bangladesh'),
(104, 'Adnan Joy', 'Netbanking', 'Uganda'),
(105, 'Emon', 'Credit Card', 'India'),
(106, 'Tushar', 'Debit Card', 'Dubai'),
(107, 'Nayeem', 'Debit Card', 'Philipine'),
(108, 'Shourov', 'Netbanking', 'India'),
(109, 'Gourov', 'Netbanking', 'India'),
(110, 'Kashem', 'Credit Card', 'Pakistan');

select * from employee;

select mode , count(customer_id) from employee group by mode;
