create database sumaiya
 go
 use sumaiya
 create table classroom(
 building char(100),
 room_no int,
 capacity int,
 primary key(building,room_no)
 );
 create table department(
 dept_name char(100) primary key,
 building char(100),
 budget int,
 );
 create table student(
 id char(100) primary key,
 name char(100),
 dept_name char(100) foreign key references department(dept_name),
 total_cred decimal(5,2),
 );
 create table instructor(
 id char(100) primary key,
 name char(100),
 dept_name char(100),
 salary int,
 foreign key (dept_name) references department(dept_name),
 ); 
 create table advisor(
 s_id char(100),
 i_id char (100) foreign key references instructor(id),
 constraint advisor_pk primary key(s_id),
 constraint advisor_fk foreign key(s_id) references student(id),
 );
 create table course(
 course_id char(100) primary key,
 title char(100),
 dept_name char(100) foreign key references department(dept_name),
 credits decimal(3,2),
 );
 create table prereq(
 course_id char(100) foreign key references course(course_id),
 prereq_id char(100) foreign key references course(course_id),
 primary key (course_id,prereq_id),
 );
 create table section(
 course_id char(100),
 sec_id char(100),
 semester char(100),
 year char(100),
 building char(100),
 room_no int,
 time_slot_id char(10),
 constraint sec_pk primary key(course_id,sec_id,semester,year),
 foreign key (building,room_no) references classroom(building,room_no),
 foreign key (course_id) references course(course_id),
 );
 create table teaches(
 id char(100),
 course_id char(100),
 sec_id char(100),
 semester char(100),
 year char(100),
 primary key(id,course_id,sec_id,semester,year),
 foreign key (course_id,sec_id,semester,year) references section(course_id,sec_id,semester,year),
 foreign key(id) references instructor(id),
 );
 create table takes(
 id char(100),
 course_id char(100),
 sec_id char(100),
 semester char(100),
 year char(100),
 grade decimal(4,2),
 primary key(id,course_id,sec_id,semester,year),
 foreign key (course_id,sec_id,semester,year) references section(course_id,sec_id,semester,year),
 foreign key (id) references student(id),
 );
 create table time_slot(
 time_slot_id char(10),
 day char(100),
 start_time decimal(4,2),
 end_time decimal(4,2),
 primary key(time_slot_id,day,start_time),
 );
 insert into[dbo].[classroom]
 values('Painter','514','100'),
('Packard','101','98'),
('Taylor','3128','92'),
('Watson','120','94'),
('Watson','100','96');
select * from classroom
insert into[dbo].[department]
values('Biology','Watson','90000'),
('Comp. Sci.','Taylor','100000'),
('Elec. Eng.','Taylor','85000'),
('Finance','Painter','120000'),
('History','Painter','50000'),
('Music','Packard','80000'),
('Physics','Watson','70000');
insert into[dbo].[student]
values('01','Sakib','Biology','019.50'),
('02','Ragib','Comp. Sci.','020.50'),
('03','Shawon','Elec. Eng.','020.50'),
('04','Anam','Finance','019.50'),
('05','Mushfiq','History','020.50'),
('06','Shoily','Music','019.50'),
('07','Sonia','Physics','020.50'),
('08','Tasnim','Biology','019.50'),
('09','Babu','Comp. Sci.','020.50'),
('10','Oishy','Elec. Eng.','020.50'),
('11','Saki','Comp. Sci.','020.50'),
('12','nafiza','Elec. Eng.','020.50');
insert into[dbo].[instructor]
values('22222','Einstein','Physics','95000'),
('12121','Wu','Finance','90000'),
('32343','El Said','History','60000'),
('45565','Katz','Comp. Sci.','75000'),
('98345','Kim','Elec. Eng.','80000'),
('76766','Crick','Biology','72000'),
('10101','Srinivasan','Comp. Sci.','65000'),
('58583','Califieri','History','62000'),
('83821','Brandt','Comp. Sci.','92000'),
('15151','Mozart','Music','40000'),
('33456','Gold','Physics','87000'),
('76543','Singh','Finance','80000');
insert into[dbo].[advisor]
values('01','22222'),
('02','12121'),
('03','32343'),
('04','45565'),
('05','98345'),
('06','76766'),
('07','10101'),
('08','58583'),
('09','83821'),
('10','15151'),
('11','33456'),
('12','76543');
insert into[dbo].[course]
values('BIO-101','Intro. to Biology','Biology','04.00'),
('BIO-301','Genetics','Biology','04.00'),
('BIO-399','Computational Biology','Biology','03.00'),
('CS-101','Intro. to Computer Science','Comp. Sci.','04.00'),
('CS-190','Game Design','Comp. Sci.','04.00'),
('CS-315','Robotics','Comp. Sci.','03.00'),
('CS-319','Image Processing','Comp. Sci.','03.00'),
('CS-347','Database System Concepts','Comp. Sci.','03.00'),
('EE-181','Intro. to Digital Systems','Elec. Eng.','03.00'),
('FIN-201','Investment Banking','Finance','03.00'),
('HIS-351','World History','History','03.00'),
('MU-199','Music Video Production','Music','03.00'),
('PHY-101','Physical Principles','Physics','04.00');
insert into[dbo].[prereq]
values('BIO-301','BIO-101'),
('BIO-399','BIO-101'),
('CS-190','CS-101'),
('CS-315','CS-101'),
('CS-319','CS-101'),
('CS-347','CS-101'),
('EE-181','PHY-101');
insert into[dbo].[section]
values('BIO-101','1','Summer','2009','Painter','514','B'),
('BIO-301','1','Summer','2010','Painter','514','A'),
('CS-101','1','Fall','2009','Packard','101','H'),
('CS-101','1','Spring','2010','Packard','101','F'),
('CS-190','1','Spring','2009','Taylor','3128','E'),
('CS-190','2','Spring','2009','Taylor','3128','A'),
('CS-315','1','Spring','2010','Watson','120','D'),
('CS-319','1','Spring','2010','Watson','100','B'),
('CS-319','2','Spring','2010','Taylor','3128','C'),
('CS-347','1','Fall','2009','Taylor','3128','A'),
('EE-181','1','Spring','2009','Taylor','3128','C'),
('FIN-201','1','Spring','2010','Packard','101','B'),
('HIS-351','1','Spring','2010','Painter','514','C'),
('MU-199','1','Spring','2010','Packard','101','D'),
('PHY-101','1','Fall','2009','Watson','100','A');
insert into[dbo].[teaches]
values('10101','CS-101','1','Fall','2009'),
('10101','CS-315','1','Spring','2010'),
('10101','CS-347','1','Fall','2009'),
('12121','FIN-201','1','Spring','2010'),
('15151','MU-199','1','Spring','2010'),
('22222','PHY-101','1','Fall','2009'),
('32343','HIS-351','1','Spring','2010'),
('45565','CS-101','1','Spring','2010'),
('45565','CS-319','1','Spring','2010'),
('76766','BIO-101','1','Summer','2009'),
('76766','BIO-301','1','Summer','2010'),
('83821','CS-190','1','Spring','2009'),
('83821','CS-190','2','Spring','2009'),
('83821','CS-319','2','Spring','2010'),
('98345','EE-181','1','Spring','2009');
insert into[dbo].[takes]
values('01','BIO-101','1','Summer','2009','03.00'),
('02','BIO-301','1','Summer','2010','03.00'),
('03','CS-101','1','Fall','2009','03.00'),
('04','CS-101','1','Spring','2010','03.00'),
('05','CS-190','1','Spring','2009','03.00'),
('06','CS-190','2','Spring','2009','03.00'),
('07','CS-315','1','Spring','2010','03.00'),
('08','CS-319','1','Spring','2010','03.00'),
('09','CS-319','2','Spring','2010','03.00'),
('10','CS-347','1','Fall','2009','03.00'),
('01','EE-181','1','Spring','2009','03.00'),
('02','FIN-201','1','Spring','2010','03.00'),
('03','HIS-351','1','Spring','2010','03.00'),
('04','MU-199','1','Spring','2010','03.00'),
('05','PHY-101','1','Fall','2009','03.00');
insert into[dbo].[time_slot]
values('A','Sat','09.30','10.50'),
('B','Sun','11.00','12.20'),
('C','Mon','08.00','09.20'),
('A','Tue','09.30','10.50'),
('B','Wed','02.00','05.00');


