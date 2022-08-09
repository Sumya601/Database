 (2)
 insert into [dbo].[works]
 values( '18101029',' sumaiya',' 23097'),
 ('18101033',' fariha ','34624')

 insert into [dbo].[company]
 values('UAP',' Dhaka','BD'),
 ('CPSCM','sajek','CTG')


 (3)

 alter table works drop column salary

 (4)
 select city	from company	where city like 'sa%'
 
 insert into [dbo].[employee]
 values('4367','farmgate','Dhaka city','bd'),
 ('5363','mirpur','Halisohor','CTG')

 (5)
 select person_id from employee where city='Dhaka city'


  