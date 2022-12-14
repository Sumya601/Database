create database Airport

go

use Airport

go

create table Pilot
(
pilot_name char(100),
age int,
gender char (100),
primary key (pilot_name)
)

create table Plane 
(
plane_name char(100),
capacity int,
pilot_name char(100),
primary key (plane_name),
foreign key (pilot_name) references Pilot
)

create table Passenger
(
passenger_name char(100),
passport char(100),
age int,
gender char(100)
primary key(passport)
)

create table Flight
(
flight_name char(100),
plane_name char(100) foreign key references plane(plane_name),
flight_fare int,
flight_from char(100),
flight_where char(100),
departure_time char(100),
arrive_time char(100),
flight_date char(100),
primary key(flight_name,flight_from,flight_where,departure_time,arrive_time,flight_fare)
)

create table TicketBooking
(
passport char(100) references Passenger(passport),
flight_date char(100),
flight_from char(100),
flight_where char(100),
flight_name char(100),
flight_fare int,
departure_time char(100),
arrive_time char(100),
foreign key (flight_name,flight_from,flight_where,departure_time,arrive_time,flight_fare) references Flight
)


insert into[dbo].[Pilot]
values('Seyan',32,'Male'),
('Royan',31,'Male'),
('Noah',30,'Female'),	
('Olivia',29,'Female'),
('Mia',32,'Female'),	
('Lucas',29,'male'),	
('Amelia',32,'Female'),	
('Mason',26,'male'),	
('Harper',30,'male'),	
('Logan',28,'male'),	
('Evelyn',31,'Female'),	
('Alexander',26,'male'),	
('Abigail',34,'male'),	
('Ethan',29,'male'),	
('Emily',30,'Female'),	
('Jacob',29,'male'),	
('Elizabeth',30,'male'),	
('Michael',29,'male'),	
('Mila',40,'Female'),	
('Oliv',49,'male'),	
('Daniel',30,'male'),	
('Henry',26,'male'),	
('Alia',30,'Female'),	
('Jackson',29,'male'),	
('Sofia',36,'Female'),	
('Camila',29,'Female'),	
('Aiden',32,'male'),	
('James',28,'male'),	
('Isabella',33,'Female'),	
('Olivar',26,'male'),	
('Sophia',38,'Female'),	
('Benjamin',29,'male'),	
('Luna',30,'Female'),	
('Charlotte',27,'male'),	
('Elijah',38,'Female'),	
('John',29,'male'),	
('Jack',30,'male'),	
('Lily ',39,'Female'),	
('Zoe',30,'male'),	
('Leah',29,'Female'),	
('Jaxon',30,'male'),	
('Ellie',29,'Female'),	
('Stella',30,'Female'),	
('Isaac',29,'male'),	
('Nova',30,'Female'),	
('Levi',29,'male'),	
('Nora',30,'male'),	
('Wyatt',29,'male'),	
('Jayden',30,'Female'),	
('Lavia',29,'male'),	
('Samuel',30,'male'),	
('Lillian',29,'Female'),		
('Ragon',35,'Male');

insert into[dbo].[Plane]
values('Air US',80,'Seyan'),
('Biman',35,'Royan'),
('Air Canada',90,'Noah'),
('US Bangla',60,'Olivia'),
('Novo Air',85,'Mia'),
('Indigo',90,'Lucas'),
('Regant',95,'Amelia'),
('Air Arabia',70,'Mason'),
('Spicejet',75,'Harper'),
('Soudi Airline',60,'Logan'),
('SalamAir',65,'Evelyn'),
('Druk Air',100,'Alexander'),
('Chaina Air',105,'Abigail'),
('Emirates',110,'Ethan'),
('Mango',106,'Emily'),
('Manta Air',120,'Jacob'),
('Zoom Air',115,'Elizabeth'),
('Zanair',130,'Michael'),
('ZheAir',135,'Mila'),
('Batik Air',80,'Oliv'),
('Belair',180,'Daniel'),
('Sansa',150,'Henry'),
('Sat',140,'Noah'),
('Safi',135,'Jackson'),
('Sac',145,'Sofia'),
('Safair',150,'Camila'),
('Pascan',155,'Aiden'),
('Pawa',165,'James'),
('Nam',170,'Isabella'),
('Neros',185,'Olivar'),
('Naysa',190,'Sophia'),
('Neos',195,'Benjamin'),
('Egypt',200,'Luna'),
('Elite',125,'Charlotte'),
('EasyJet',105,'Elijah'),
('Van Air',95,'John'),
('Villa',136,'Jack'),
('ViaAir',147,'Lily'),
('Taag',158,'Zoe'),
('Taban',126,'Leah'),
('Tacv',142,'Jaxon'),
('Tame',143,'Ellie'),
('Wamos',136,'Stella'),
('West',148,'Isaac'),
('Cape',226,'Nova'),
('Calm',76,'Levi'),
('LAN Air',88,'Jayden');

insert into[dbo].[Passenger]
values('Sumaiya','AB1234567',21,'female'),
('Mashfie','AC7654321',21,'male'),
('Adnan','AD9876543',23,'female'),
('Sumu','AA12',29,'female'),
('Mash','AB12',18,'male'),
('Muzib','AC12',27,'female'),
('Rashu','AD12',40,'male'),
('Mubina','AE12',61,'female'),
('Sarvi','AF12',38,'male'),
('Akash','AG12',21,'male'),
('Anika','AH12',71,'female'),
('Tori','AI12',24,'female'),
('Tanna','AJ12',3,'female'),
('Arabi','AK12',30,'male'),
('Ohona','AL12',32,'female'),
('Oboni','AM12',33,'female'),
('kona','AN12',3,'female'),
('Kamal','AO12',3,'male'),
('Daisi Apa','AP12',70,'female'),
('Salam','AQ12',38,'male'),
('kabir','AR12',30,'male'),
('Dhoni','AS12',37,'male'),
('Dora','AT12',3,'female'),
('Riad','AU12',11,'male'),
('Ria','AV12',21,'female'),
('busra','AW12',30,'female'),
('Roshan','AX12',28,'male'),
('Rogan','AY12',31,'male'),
('Hima','AZ12',20,'female'),
('HELEN','BA12',33,'female'),
('TUHIN','BB12',36,'male'),
('ABDUL','Bc12',26,'male'),
('TUNDRA','Bd12',75,'female'),
('JIA','Be12',36,'female'),
('JAMAL','Bf12',26,'male'),
('MONI','Bg12',28,'female'),
('MONTU','Bh12',12,'male'),
('MUNIA','Bi12',40,'female'),
('MAHIRA','Bj12',39,'female'),
('NAHAR','Bk12',25,'female'),
('RAZU','Bm12',91,'male'),
('BEAUTY','Bn12',44,'female'),
('MAHDI','Bo12',49,'male'),
('SAYANA','Bp12',36,'female'),
('SONALI','Bq12',25,'female'),
('FARDIN','Br12',65,'male'),
('SAMIA','Bs12',32,'female'),
('NOOR','Bt12',65,'male'),
('RAFA','BU12',18,'female'),
('RAFIA','BV12',16,'female'),
('ROHAN','BW12',15,'male'),
('RUMA','BX12',56,'female'),
('TOMAL','BY12',63,'male'),
('TOMA','BL12',32,'female'),
('KEYA','BZ12',13,'male');

insert into [dbo].[Flight]
values
('11A','Air US',1010,'Afghanistan','Madagascar','8:00 AM','10:00 PM','1/1/2020'),
('11B','Biman',1020,'Albania','Malawi','8:15 AM','10:15 PM','1/2/2020'),
('11C','Air Canada',1030,'Algeria','Malaysia','8:30 AM','10:30 PM','1/3/2020'),
('11D','US Bangla',1040,'Bangladesh','Morocco','8:45 AM','10:45 PM','1/4/2020'),
('11E','Novo Air',1050,'Belgium','Namibia','9:00 AM','11:00 PM','1/5/2020'),
('11F','Indigo',1050,'Canada','Oman','9:15 PM','11:15 PM','1/6/2020'),
('11G','Regant',2010,'Pakistan','Colombia','9:30 PM','11:30 PM','1/7/2020'),
('11H','Air Arabia',2020,'Portugal','Croatia','9:45 PM','11:45 PM','1/8/2020'),
('11I','Spicejet',2030,'Qatar','Denmark','10:00 AM','12:00 PM','1/9/2020'),
('11J','Soudi Airline',2040,'Russia','Estonia','10:15 AM','12:15 PM','1/10/2020'),
('11K','SalamAir',2050,'Egypt','Serbia','10:30 AM','12:30 PM','1/11/2020'),
('11L','Druk Air',3010,'Singapore','France','10:45 AM','12:45 PM','1/12/2020'),
('11M','Chaina Air',3020,'Finland','Spain','11:00 AM','1:00 PM','1/13/2020'),
('11N','Emirates',3030,'Georgia','Thailand','11:15 AM','1:15 PM','1/14/2020'),
('11O','Mango',3040,'Hungary','Uganda','11:30 AM','1:30 PM','1/15/2020'),
('11P','Manta Air',3050,'Iceland','Uruguay','11:45 AM','1:45 PM','1/16/2020'),
('11Q','Zoom Air',4010,'India','Japan','12:00 AM','2:00 PM','1/17/2020'),
('11R','Zanair',4020,'Zimbabwe','Kenya','12:15 AM','2:15 PM','1/18/2020'),
('11S','ZheAir',4030,'Latvia','Luxembourg','12:30 AM','2:30 PM','1/19/2020'),
('11T','Batik Air',40340,'Zambia','Kazakhstan','12:45 AM','2:45 PM','1/20/2020'),
('11U','Belair',4050,'Jordan','Vietnam','1:00 AM','3:00 PM','1/21/2020'),
('11V','Sansa',5010,'Italy','United Arab Emirates, The','1:15 AM','3:15 PM','1/22/2020'),
('11X','Sat',5020,'Honduras','Texas*','1:30 AM','3:30 PM','1/23/2020'),
('11Y','Safi',5030,'New Zealand','Australia','1:45 AM','3:45 PM','1/24/2020'),
('11Z','Sac',5040,'Argentina','Malta','2:00 AM','4:00 PM','1/25/2020'),
('22A','Safair',5050,'Bulgaria','Albania','2:15 AM','4:15 PM','1/26/2020'),
('22B','Pascan',6050,'Cambodia','Antigua and Barbuda','2:30 AM','4:30 PM','1/27/2020'),
('22C','Pawa',6040,'Cameroon','Austrian Empire','2:45 AM','4:45 PM','1/28/2020'),
('22D','Nam',6030,'Bahrain','Cabo Verde','3:00 AM','5:00 PM','1/29/2020'),
('22E','Neros',6231,'China','Ecuador','3:15 AM','5:15 PM','1/30/2020'),
('22F','Naysa',6532,'Equatorial Guinea','Gabon','3:30 AM','5:30 PM','1/31/2020'),
('22G','Neos',7825,'Guyana','Holy See','3:45 AM','5:45 PM','2/1/2020'),
('22H','Egypt',6214,'Jamaica','Korea','4:00 AM','6:00 PM','2/2/2020'),
('22I ','Elite',13321,'Kosovo','Kingdom of Serbia','4:15 AM','6:15 PM','2/3/2020'),
('22J','EasyJet',2596,'Mali','Lithuania','4:30 AM','6:30 PM','2/4/2020'),
('22K','Van Air',36546,'Malawi','Luxembourg','4:45 AM','6:45 PM','2/5/2020'),
('22L','Villa',46876,'Mauritius','Liechtenstein','5:00 AM','7:00 PM','2/6/2020'),
('22M','ViaAir',2565,'Mexico','Liberia','5:15 AM','7:15 PM','2/7/2020'),
('22N','Taag',5954,'Lew Chew','Lesotho','5:30 AM','7:30 PM','2/8/2020'),
('22O','Taban',2566,'Netherlands','Lebanon','5:45 AM','8:00 PM','2/9/2020'),
('22P','Tacv',2563,'Laos','Niger','6:00 AM','8:15 PM','2/10/2020'),
('22Q','Tame',25663,'North Macedonia','Oldenburg','6:15 AM','8:30 PM','2/11/2020'),
('22R','Wamos',52532,'Palau','Panama','6:30 AM','8:45 PM','2/12/2020'),
('22S','West',5302,'Saudi Arabia','Sierra Leone','6:45 AM','9:00 PM','2/13/2020'),
('22T','Cape',6332,'Solomon Islands','South Africa','7:00 AM','9:15 PM','2/14/2020'),
('22U','Calm',56663,'South Sudan','Tonga','7:15 AM','9:30 PM','2/15/2020'),
('22V','LAN Air',333366,'Tuvalu','Turkmenistan','7:30 AM','9:45 PM','2/16/2020');

insert into [dbo].[TicketBooking]
values
('AB1234567','1/1/2020','Afghanistan','Madagascar','11A',1010,'8:00 AM','10:00 PM'),
('AC7654321','1/2/2020','Albania','Malawi','11B',1020,'8:15 AM','10:15 PM'),
('AD9876543','1/3/2020','Algeria','Malaysia','11C',1030,'8:30 AM','10:30 PM'),
('AA12','1/4/2020','Bangladesh','Morocco','11D',1040,'8:45 AM','10:45 PM'),
('AB12','1/5/2020','Belgium','Namibia','11E',1050,'9:00 AM','11:00 PM'),
('AC12','1/6/2020','Canada','Oman','11F',1050,'9:15 PM','11:15 PM'),
('AD12','1/7/2020','Pakistan','Colombia','11G',2010,'9:30 PM','11:30 PM'),
('AE12','1/8/2020','Portugal','Croatia','11H',2020,'9:45 PM','11:45 PM'),
('AF12','1/9/2020','Qatar','Denmark','11I',2030,'10:00 AM','12:00 PM'),
('AG12','1/10/2020','Russia','Estonia','11J',2040,'10:15 AM','12:15 PM'),
('AH12','1/11/2020','Egypt','Serbia','11K',2050,'10:30 AM','12:30 PM'),
('AI12','1/12/2020','Singapore','France','11L',3010,'10:45 AM','12:45 PM'),
('AJ12','1/13/2020','Finland','Spain','11M',3020,'11:00 AM','1:00 PM'),
('AK12','1/14/2020','Georgia','Thailand','11N',3030,'11:15 AM','1:15 PM'),
('AL12','1/15/2020','Hungary','Uganda','11O',3040,'11:30 AM','1:30 PM'),
('AM12','1/16/2020','Iceland','Uruguay','11P',3050,'11:45 AM','1:45 PM'),
('AN12','1/17/2020','India','Japan','11Q',4010,'12:00 AM','2:00 PM'),
('AO12','1/18/2020','Zimbabwe','Kenya','11R',4020,'12:15 AM','2:15 PM'),
('AP12','1/19/2020','Latvia','Luxembourg','11S',4030,'12:30 AM','2:30 PM'),
('AQ12','1/20/2020','Zambia','Kazakhstan','11T',40340,'12:45 AM','2:45 PM'),
('AR12','1/21/2020','Jordan','Vietnam','11U',4050,'1:00 AM','3:00 PM'),
('AS12','1/22/2020','Italy','United Arab Emirates, The','11V',5010,'1:15 AM','3:15 PM'),
('AT12','1/23/2020','Honduras','Texas*','11X','5020','1:30 AM','3:30 PM'),
('AU12','1/24/2020','New Zealand','Australia','11Y',5030,'1:45 AM','3:45 PM'),
('AV12','1/25/2020','Argentina','Malta','11Z',5040,'2:00 AM','4:00 PM'),
('AW12','1/26/2020','Bulgaria','Albania','22A',5050,'2:15 AM','4:15 PM'),
('AX12','1/27/2020','Cambodia','Antigua and Barbuda','22B',6050,'2:30 AM','4:30 PM'),
('AY12','1/28/2020','Cameroon','Austrian Empire','22C',6040,'2:45 AM','4:45 PM'),
('AZ12','1/29/2020','Bahrain','Cabo Verde','22D',6030,'3:00 AM','5:00 PM'),
('BA12','1/30/2020','China','Ecuador','22E',6231,'3:15 AM','5:15 PM'),
('BB12','1/31/2020','Equatorial Guinea','Gabon','22F',6532,'3:30 AM','5:30 PM'),
('Bc12','2/1/2020','Guyana','Holy See','22G',7825,'3:45 AM','5:45 PM'),
('Bd12','2/2/2020','Jamaica','Korea','22H',6214,'4:00 AM','6:00 PM'),
('Be12','2/3/2020','Kosovo','Kingdom of Serbia','22I ',13321,'4:15 AM','6:15 PM'),
('Bf12','2/4/2020','Mali','Lithuania','22J',2596,'4:30 AM','6:30 PM'),
('Bg12','2/5/2020','Malawi','Luxembourg','22K',36546,'4:45 AM','6:45 PM'),
('Bh12','2/6/2020','Mauritius','Liechtenstein','22L',46876,'5:00 AM','7:00 PM'),
('Bi12','2/7/2020','Mexico','Liberia','22M',2565,'5:15 AM','7:15 PM'),
('Bj12','2/8/2020','Lew Chew','Lesotho','22N',5954,'5:30 AM','7:30 PM'),
('Bk12','2/9/2020','Netherlands','Lebanon','22O',2566,'5:45 AM','8:00 PM'),
('Bm12','2/10/2020','Laos','Niger','22P',2563,'6:00 AM','8:15 PM'),
('Bn12','2/11/2020','North Macedonia','Oldenburg','22Q',25663,'6:15 AM','8:30 PM'),
('Bo12','2/12/2020','Palau','Panama','22R',52532,'6:30 AM','8:45 PM'),
('Bp12','2/13/2020','Saudi Arabia','Sierra Leone','22S',5302,'6:45 AM','9:00 PM'),
('Bq12','2/14/2020','Solomon Islands','South Africa','22T',6332,'7:00 AM','9:15 PM'),
('Br12','2/15/2020','South Sudan','Tonga','22U',56663,'7:15 AM','9:30 PM'),
('Bs12','2/16/2020','Tuvalu','Turkmenistan','22V',333366,'7:30 AM','9:45 PM');


select *from[dbo].[Pilot]
select *from[dbo].[Plane]
select*from[dbo].[Passenger]
select*from[dbo].[Flight]
select*from[dbo].[TicketBooking]

