create database Employee

use Employee
go

create table employee(
person_id varchar(100) primary key,
street varchar(100),
city varchar(100)
);

create table company(
company_name varchar(100) primary key,
city varchar(100),
);
go

create table work(
person_id varchar(100)foreign key references employee(person_id),
person_name varchar(100),
company_name varchar(100)foreign key references company(company_name),
salary int,
primary key(person_id,company_name)
);

insert into employee
values
('101',' Dha',' Dhaka'),
('102',' Com','Comilla'),
('103',' Lal','Lalbag'),
('104',' Nil','Nilkhet'),
('105',' Far','Farmgate'),
('106',' Gre','Greenroad'),
('107',' Cha','Chandpur')

select *from[dbo].[employee]

insert into company
values
('alibaba',' Dhaka'),
('amazon',' Comilla'),
('onnorokom',' Lalbag'),
('rokomari',' Nilkhet'),
('microsoft',' Farmgate'),
('google',' Greeenroad'),
('nasa',' Chandpur')

select *from[dbo].[company]

insert into work
values

('101','anika','alibaba','10000'),
('102','mubina','google','20000'),
('103','ayesha','nasa','12000'),
('104','sharmin','alibaba','34556'),
('105','sabrina','amazon','12345'),
('106','progga','onnorokom','29000'),
('107','ruhin','microsoft','23333')

select *from[dbo].[work]
 
select * from company
where city like '%a' 

select person_id 
from employee
where city ='Dhaka'
 
select person_id,city
from employee,work
where work.person_id=work.person_id and company_name='alibaba'
 
select person_name,street,city
from employee,work
where employee.person_id=work.person_id and company_name='alibaba' and salary>10000


select top 1 [company_name] 
from (
select  count ([person_id]) as num_of_peo, [company_name]
from [dbo].[works]
group by [company_name] ) 
A
order by num_of_peo desc