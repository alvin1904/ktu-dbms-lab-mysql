create database d7;
use d7;


create table StudentDetails (
	name VARCHAR(50),
	rollno INT,
	utyregno VARCHAR(9),
	address VARCHAR(50),
	year_of_admin INT,
	year_of_passout INT,
	branch VARCHAR(3),
	class_teacher VARCHAR(10),
	emailid VARCHAR(50),
	phoneno VARCHAR(10)
);

insert into StudentDetails values ('Reade', 1, 'KTE59XX70', '72025 Sherman Parkway', 2020, 2024, 'EEE', 'Aswin', 'rblumer0@mapy.cz', '7044958412');
insert into StudentDetails values ('Gracia', 2, 'KTE96XX57', '9723 Buhler Crossing', 2020, 2024, 'CSE', 'Amalia', 'gcrufts1@mlb.com', '6059232571');
insert into StudentDetails values ('Larine', 3, 'KTE99XX66', '57 Anderson Park', 2017, 2021, 'MEC', 'Arya', 'lduffill2@histats.com', '9301870105');
insert into StudentDetails values ('Cyrill', 4, 'KTE05XX60', '8 Forest Circle', 2017, 2021, 'CIV', 'Hrishikesh', 'cdemaid3@imageshack.us', '6098931285');
insert into StudentDetails values ('Alberto', 5, 'KTE84XX84', '65863 Stephen Pass', 2017, 2021, 'MEC', 'Arya', 'amacmychem4@domainmarket.com', '7478791342');
insert into StudentDetails values ('Rowland', 6, 'KTE78XX78', '1954 Lerdahl Junction', 2017, 2021, 'CSE', 'Shaju', 'rkimmitt5@google.co.jp', '6436096352');
insert into StudentDetails values ('Querida', 7, 'KTE97XX42', '75 Mayer Hill', 2017, 2021, 'CSE', 'Shaju', 'qboyles6@dedecms.com', '7259647900');
insert into StudentDetails values ('Cortney', 8, 'KTE33XX46', '72058 Farragut Junction', 2017, 2021, 'EEE', 'Abru', 'ckelbie7@simplemachines.org', '8767658796');
insert into StudentDetails values ('Wendell', 9, 'KTE08XX56', '5452 Clarendon Lane', 2018, 2022, 'ECE', 'Aswin', 'wsandever8@studiopress.com', '8376102289');
insert into StudentDetails values ('Ruggiero', 10, 'KTE08XX40', '2050 Quincy Park', 2018, 2022, 'ECE', 'Aswin', 'rdionisio9@a8.net', '9047797177');
insert into StudentDetails values ('Othelia', 11, 'KTE22XX47', '94542 Russell Court', 2019, 2023, 'MEC', 'Hrishikesh', 'olidyarda@guardian.co.uk', '8771090635');
insert into StudentDetails values ('Evanne', 12, 'KTE32XX50', '7 Reindahl Avenue', 2017, 2021, 'CIV', 'Hrishikesh', 'echarnickb@cdbaby.com', '8917709000');
insert into StudentDetails values ('Werner', 13, 'KTE67XX12', '477 Banding Point', 2017, 2021, 'MEC', 'Arya', 'wfargiec@uol.com.br', '6222432090');
insert into StudentDetails values ('Rickie', 14, 'KTE94XX98', '4974 Clarendon Court', 2018, 2022, 'CSE', 'Amalia', 'ralessandruccid@bluehost.com', '6431856826');
insert into StudentDetails values ('Joell', 15, 'KTE84XX57', '609 Lawn Drive', 2020, 2024, 'EEE', 'Aswin', 'jrobroee@adobe.com', '6280780207');
insert into StudentDetails values ('Percival', 16, 'KTE52XX11', '6 Vahlen Hill', 2018, 2022, 'ECE', 'Aswin', 'pcruttendenf@cmu.edu', '9673248954');
insert into StudentDetails values ('Kara-lynn', 17, 'KTE63XX38', '8 Delaware Park', 2018, 2022, 'CSE', 'Amalia', 'kquiltyg@amazon.com', '8107687778');
insert into StudentDetails values ('Matty', 18, 'KTE30XX07', '173 Cherokee Court', 2020, 2024, 'CIV', 'Arya', 'mmeiningerh@51.la', '7379857870');
insert into StudentDetails values ('Cristi', 19, 'KTE99XX47', '582 Reinke Pass', 2018, 2022, 'CSE', 'Amalia', 'cscholeyi@blinklist.com', '9571826511');
insert into StudentDetails values ('Orel', 20, 'KTE64XX48', '54 Heath Center', 2020, 2024, 'CIV', 'Arya', 'osharpj@over-blog.com', '9903333410');

create table CourseQualification (
	utyregno VARCHAR(9),
	total INT,
	grades VARCHAR(11),
	year VARCHAR(4)
);

insert into CourseQualification values ('KTE59XX70', 76, 'secondClass', 2021);
insert into CourseQualification values ('KTE59XX70', 87, 'firstClass', 2022);
insert into CourseQualification values ('KTE59XX70', 79, 'secondClass', 2023);
insert into CourseQualification values ('KTE59XX70', 76, 'secondClass', 2024);
insert into CourseQualification values ('KTE96XX57', 98, 'distinction', 2021);
insert into CourseQualification values ('KTE96XX57', 99, 'distinction', 2022);
insert into CourseQualification values ('KTE96XX57', 77, 'secondClass', 2023);
insert into CourseQualification values ('KTE96XX57', 85, 'firstClass', 2024);
insert into CourseQualification values ('KTE99XX66', 75, 'secondClass', 2018);
insert into CourseQualification values ('KTE99XX66', 99, 'distinction', 2019);
insert into CourseQualification values ('KTE99XX66', 82, 'firstClass', 2020);
insert into CourseQualification values ('KTE99XX66', 94, 'distinction', 2021);
insert into CourseQualification values ('KTE05XX60', 80, 'secondClass', 2018);
insert into CourseQualification values ('KTE05XX60', 81, 'firstClass', 2019);
insert into CourseQualification values ('KTE05XX60', 92, 'distinction', 2020);
insert into CourseQualification values ('KTE05XX60', 97, 'distinction', 2021);
insert into CourseQualification values ('KTE84XX84', 96, 'distinction', 2018);
insert into CourseQualification values ('KTE84XX84', 77, 'secondClass', 2019);
insert into CourseQualification values ('KTE84XX84', 97, 'distinction', 2020);
insert into CourseQualification values ('KTE84XX84', 83, 'firstClass', 2021);
insert into CourseQualification values ('KTE78XX78', 86, 'firstClass', 2018);
insert into CourseQualification values ('KTE78XX78', 81, 'firstClass', 2019);
insert into CourseQualification values ('KTE78XX78', 90, 'firstClass', 2020);
insert into CourseQualification values ('KTE78XX78', 92, 'distinction', 2021);
insert into CourseQualification values ('KTE97XX42', 81, 'firstClass', 2018);
insert into CourseQualification values ('KTE97XX42', 96, 'distinction', 2019);
insert into CourseQualification values ('KTE97XX42', 92, 'distinction', 2020);
insert into CourseQualification values ('KTE97XX42', 92, 'distinction', 2021);
insert into CourseQualification values ('KTE33XX46', 80, 'secondClass', 2018);
insert into CourseQualification values ('KTE33XX46', 88, 'firstClass', 2019);
insert into CourseQualification values ('KTE33XX46', 85, 'firstClass', 2020);
insert into CourseQualification values ('KTE33XX46', 79, 'secondClass', 2021);
insert into CourseQualification values ('KTE08XX56', 84, 'firstClass', 2019);
insert into CourseQualification values ('KTE08XX56', 90, 'firstClass', 2020);
insert into CourseQualification values ('KTE08XX56', 90, 'firstClass', 2021);
insert into CourseQualification values ('KTE08XX56', 90, 'firstClass', 2022);
insert into CourseQualification values ('KTE08XX40', 80, 'secondClass', 2019);
insert into CourseQualification values ('KTE08XX40', 75, 'secondClass', 2020);
insert into CourseQualification values ('KTE08XX40', 78, 'secondClass', 2021);
insert into CourseQualification values ('KTE08XX40', 95, 'distinction', 2022);
insert into CourseQualification values ('KTE22XX47', 87, 'firstClass', 2020);
insert into CourseQualification values ('KTE22XX47', 84, 'firstClass', 2021);
insert into CourseQualification values ('KTE22XX47', 97, 'distinction', 2022);
insert into CourseQualification values ('KTE22XX47', 80, 'secondClass', 2023);
insert into CourseQualification values ('KTE32XX50', 77, 'secondClass', 2018);
insert into CourseQualification values ('KTE32XX50', 77, 'secondClass', 2019);
insert into CourseQualification values ('KTE32XX50', 85, 'firstClass', 2020);
insert into CourseQualification values ('KTE32XX50', 87, 'firstClass', 2021);
insert into CourseQualification values ('KTE67XX12', 97, 'distinction', 2018);
insert into CourseQualification values ('KTE67XX12', 99, 'distinction', 2019);
insert into CourseQualification values ('KTE67XX12', 91, 'distinction', 2020);
insert into CourseQualification values ('KTE67XX12', 75, 'secondClass', 2021);
insert into CourseQualification values ('KTE94XX98', 95, 'distinction', 2019);
insert into CourseQualification values ('KTE94XX98', 100, 'distinction', 2020);
insert into CourseQualification values ('KTE94XX98', 84, 'firstClass', 2021);
insert into CourseQualification values ('KTE94XX98', 100, 'distinction', 2022);
insert into CourseQualification values ('KTE84XX57', 79, 'secondClass', 2021);
insert into CourseQualification values ('KTE84XX57', 88, 'firstClass', 2022);
insert into CourseQualification values ('KTE84XX57', 87, 'firstClass', 2023);
insert into CourseQualification values ('KTE84XX57', 92, 'distinction', 2024);
insert into CourseQualification values ('KTE52XX11', 92, 'distinction', 2019);
insert into CourseQualification values ('KTE52XX11', 80, 'secondClass', 2020);
insert into CourseQualification values ('KTE52XX11', 87, 'firstClass', 2021);
insert into CourseQualification values ('KTE52XX11', 80, 'secondClass', 2022);
insert into CourseQualification values ('KTE63XX38', 81, 'firstClass', 2019);
insert into CourseQualification values ('KTE63XX38', 80, 'secondClass', 2020);
insert into CourseQualification values ('KTE63XX38', 97, 'distinction', 2021);
insert into CourseQualification values ('KTE63XX38', 80, 'secondClass', 2022);
insert into CourseQualification values ('KTE30XX07', 94, 'distinction', 2021);
insert into CourseQualification values ('KTE30XX07', 86, 'firstClass', 2022);
insert into CourseQualification values ('KTE30XX07', 75, 'secondClass', 2023);
insert into CourseQualification values ('KTE30XX07', 96, 'distinction', 2024);
insert into CourseQualification values ('KTE99XX47', 86, 'firstClass', 2019);
insert into CourseQualification values ('KTE99XX47', 96, 'distinction', 2020);
insert into CourseQualification values ('KTE99XX47', 80, 'secondClass', 2021);
insert into CourseQualification values ('KTE99XX47', 97, 'distinction', 2022);
insert into CourseQualification values ('KTE64XX48', 96, 'distinction', 2021);
insert into CourseQualification values ('KTE64XX48', 91, 'distinction', 2022);
insert into CourseQualification values ('KTE64XX48', 94, 'distinction', 2023);
insert into CourseQualification values ('KTE64XX48', 86, 'firstClass', 2024);

create table ProjectDetails (
	utyregno VARCHAR(9),
	title VARCHAR(50),
	guide VARCHAR(10),
	period_of_implementation DECIMAL(1),
	corearea VARCHAR(3)
);
insert into ProjectDetails values ('KTE59XX70', 'edu.stanford.Daltfresh', 'Aswin', 2, 'ECE');
insert into ProjectDetails values ('KTE96XX57', 'org.pbs.Toughjoyfax', 'Hrishikesh', 3, 'CIV');
insert into ProjectDetails values ('KTE99XX66', 'com.chronoengine.Matsoft', 'Arya', 3, 'MEC');
insert into ProjectDetails values ('KTE05XX60', 'org.npr.Kanlam', 'Amalia', 2, 'CSE');
insert into ProjectDetails values ('KTE84XX84', 'gov.census.Flowdesk', 'Amalia', 1, 'CSE');
insert into ProjectDetails values ('KTE78XX78', 'com.springer.Quo Lux', 'Shaju', 3, 'CSE');
insert into ProjectDetails values ('KTE97XX42', 'com.deviantart.Kanlam', 'Arya', 2, 'CIV');
insert into ProjectDetails values ('KTE33XX46', 'br.com.uol.Job', 'Aswin', 1, 'ECE');
insert into ProjectDetails values ('KTE08XX56', 'com.msn.Regrant', 'Arya', 1, 'CIV');
insert into ProjectDetails values ('KTE08XX40', 'com.friendfeed.Greenlam', 'Arya', 2, 'MEC');
insert into ProjectDetails values ('KTE22XX47', 'jp.co.yahoo.Span', 'Amalia', 1, 'CSE');
insert into ProjectDetails values ('KTE32XX50', 'com.printfriendly.Quo Lux', 'Hrishikesh', 3, 'MEC');
insert into ProjectDetails values ('KTE67XX12', 'com.blogtalkradio.Tampflex', 'Arya', 3, 'CIV');
insert into ProjectDetails values ('KTE94XX98', 'jp.co.yahoo.Daltfresh', 'Hrishikesh', 1, 'CIV');
insert into ProjectDetails values ('KTE84XX57', 'edu.wisc.Namfix', 'Aswin', 3, 'ECE');
insert into ProjectDetails values ('KTE52XX11', 'org.wikipedia.Tresom', 'Hrishikesh', 2, 'CIV');
insert into ProjectDetails values ('KTE63XX38', 'jp.co.amazon.Latlux', 'Arya', 2, 'MEC');
insert into ProjectDetails values ('KTE30XX07', 'com.forbes.Matsoft', 'Arya', 2, 'CIV');
insert into ProjectDetails values ('KTE99XX47', 'com.deviantart.Fintone', 'Aswin', 1, 'EEE');
insert into ProjectDetails values ('KTE64XX48', 'org.unicef.Kanlam', 'Abru', 3, 'EEE');

create table FacultyDetails (
	fname VARCHAR(10),
	fid VARCHAR(50),
	email VARCHAR(50),
	designation VARCHAR(9),
	joiningdate DATE,
	relievingdate DATE
);
insert into FacultyDetails values ('Abru', 'KTF52YY80', 'solenane0@example.com', 'Prof', '2022-05-01', '2022-10-22');
insert into FacultyDetails values ('Arya', 'KTF45YY93', 'jliven1@posterous.com', 'Prof', '2021-07-24', '2022-07-13');
insert into FacultyDetails values ('Hrishikesh', 'KTF85YY58', 'efeldmesser2@chicagotribune.com', 'Prof', '2020-09-03', null);
insert into FacultyDetails values ('Aswin', 'KTF11YY19', 'ecantos3@walmart.com', 'Ad_Hoc', '2018-01-14', null);
insert into FacultyDetails values ('Amalia', 'KTF37YY55', 'marling4@toplist.cz', 'Asst_Prof', '2021-08-30', '2022-09-23');
insert into FacultyDetails values ('Shaju', 'KTF40YY60', 'clyle5@reddit.com', 'Asst_Prof', '2018-08-17', null);

select * from StudentDetails;
select * from CourseQualification;
select * from ProjectDetails;
select * from FacultyDetails;


/* FIRST QUESTION */
select name, rollno, address, year_of_admin
from StudentDetails
where branch = 'CSE'
order by year_of_admin;

/* SECOND QUESTION */
select name, rollno, branch, year_of_passout
from StudentDetails
order by branch, year_of_passout;

/* THIRD QUESTION */
/* Let the branch be CSE */
/* select utyregno from StudentDetails where branch = 'CSE'; */
select * from ProjectDetails where utyregno IN (select utyregno from StudentDetails where branch = 'CSE');

/* FOURTH QUESTION */
/* let having more than 2 projects per year */
/* select utyregno, name, year_of_passout, title, guide
from StudentDetails NATURAL JOIN ProjectDetails;
*/
select guide, year_of_passout, count(*) as 'No_of_projects_in_that_year'
from StudentDetails NATURAL JOIN ProjectDetails
group by guide, year_of_passout
having count(*)>=2
order by guide, year_of_passout;

/* FIFTH QUESTION */
/*select branch, year, avg(total)
from StudentDetails s NATURAL JOIN CourseQualification c
group by year,s.branch
order by year, avg(total) DESC;
*/
select year, MAX(t1.theAvg) 'acadPerformance'
from (select c.year, s.branch, avg(total) 'theAvg'
from StudentDetails s NATURAL JOIN CourseQualification c
group by c.year,s.branch
) as t1
group by year;

/* SIXTH QUESTION */
select c.year, s.branch, MAX(total)
from StudentDetails s NATURAL JOIN CourseQualification c
group by c.year, s.branch
order by year, branch;

select utyregno, c.year, s.branch, total 
from StudentDetails s NATURAL JOIN CourseQualification c
group by c.year, s.branch, utyregno, total
order by year, branch;

/* SEVENTH QUESTION */
/* let the academic year be 2021 && grade be distinction */
select utyregno, name, c.year 'academic_year', c.grades
from StudentDetails s NATURAL JOIN CourseQualification c
where c.year = 2021 AND c.grades = 'distinction';

/* EIGTH QUESTION */
/* let the given core area be CSE */
select utyregno, title, guide, s.year_of_passout, corearea from ProjectDetails p NATURAL JOIN StudentDetails s
where corearea = 'CSE'
order by s.year_of_passout;

/* NINTH QUESTION */
select year_of_admin, branch, grades, count(*) as 'Total No of grades'
from StudentDetails s NATURAL JOIN CourseQualification c
group by s.year_of_admin, s.branch, grades
order by s.year_of_admin, s.branch, grades;

/* TENTH QUESTION */
/* let year be 2020*/
select * from StudentDetails
where year_of_admin=2020
order by branch;

/* ELEVENTH QUESTION */
select * from StudentDetails
order by year_of_admin, branch;

/* TWELFTH QUESTION */
select c.year, s.branch, max(total) as 'Best marks in 2021'
from StudentDetails s NATURAL JOIN CourseQualification c
group by c.year, s.branch
having year=2021
order by year, branch;

select c.year, s.branch, min(total) as 'Worst marks in 2021'
from StudentDetails s NATURAL JOIN CourseQualification c
group by c.year, s.branch
having year=2021
order by year, branch;

select c.year, s.branch, avg(total) as 'Avg marks in 2021'
from StudentDetails s NATURAL JOIN CourseQualification c
group by c.year, s.branch
having year=2021
order by year, branch;


drop database d7;
