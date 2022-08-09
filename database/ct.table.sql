create database mash
go 
use mash
go

create table employee(
employee_name char (50),
street char (50),
city char (50)
);


select *from [dbo].[employee]


create table works(
employee_name char(50),
company_name char(50),
salary int
);


select *from works


create table company(
company_name char(50),
city char(50)
);


select *from company


create table manages(
employee_name char(50),
manager_name char(50)
);


select *from manages