use MidQues4
go

create table employee(
 person_id char(50),
 street char(50),
 city char(50)
 );

 select *from employee

 create table works(
 person_id char(50),
 company_name char(50),
 salary int
 );

 select *from works

 create table company(
 company_name char(50),
 city char(50)
 );

 select *from company



 alter table employee add country char (50)
 alter table company add country char (50)


