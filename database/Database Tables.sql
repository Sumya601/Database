use error 


create table department (
dept_name char (100),
building varchar(100),
budget int ,

constraint dept_name_pk primary key (dept_name)

);
select *from department


create table student (

ID varchar(10),
name char(100),
dept_name char(100),
tot_cred numeric(5,3)

primary key (ID),
constraint dept_name_fk foreign key (dept_name) references department (dept_name)

);

select *from student

create table instructor(

ID varchar (10) primary key,
name char(100),
dept_name char(100),
salary int,

foreign key (dept_name) references department (dept_name)

);

select * from instructor


create table advisor(

s_id varchar(10) constraint s_id_pk primary key ,
i_id varchar (10) foreign key references instructor (ID),

foreign key (s_id) references student (ID)


);

select * from advisor


create table course(
course_id varchar (20) primary key,
title char(20),
dept_name char(100)  foreign key (dept_name) references department (dept_name),
credits numeric(5,3)

);

 select * from course


 create table prereq(
 
 course_id varchar (20) ,
 prereq_id varchar (20),
 primary key (course_id , prereq_id),

constraint course_id_fk foreign key (course_id) references course (course_id),
constraint prereq_id_fk foreign key (prereq_id) references course (course_id),
 
 
 );

 select * from prereq


create table classroom(

building varchar(100),
room_no smallint,
capacity int,

primary key(building, room_no)

);

select * from classroom


create table section(
course_id varchar (20) ,
sec_id char(20),
semester char (20),
year int,
building varchar(100), 
room_no smallint,
time_slot_id varchar (20),

primary key (course_id,sec_id ,semester,year ),

foreign key (course_id) references course (course_id),
foreign key (building , room_no) references classroom (building, room_no)

);

select * from section


create table teaches (

ID varchar(10),
course_id varchar(20),
sec_id char (20),
semester char (20),
year int,

primary key (ID,course_id,sec_id ,semester,year ),

foreign key (ID) references instructor (ID),
foreign key (course_id,sec_id ,semester ,year ) references section (course_id,sec_id ,semester ,year)

);

select * from teaches

create table takes(

ID varchar(10),
course_id varchar(20),
sec_id char (20),
semester char (20),
year int,
grade numeric (3,2),

primary key (ID ,course_id,sec_id ,semester,year ),

foreign key (ID) references student (ID),

foreign key (course_id,sec_id ,semester ,year ) references section (course_id,sec_id ,semester ,year)

);

select * from takes


create table time_slot(

time_slot_id varchar(20),
day varchar(20),
start_time varchar(15),
end_time varchar(15),

primary key (time_slot_id ,day ,start_time),

);

select * from time_slot