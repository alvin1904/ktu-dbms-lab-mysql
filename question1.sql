create database Ktu;
use Ktu;

create table College(college_code int,college_name varchar(40),address varchar(50), PRIMARY KEY(college_code));

insert into College values(12983,"RIT","Pambady,Kottayam");
insert into College values(12986,"CET","Trivandrum");
insert into College values(12982,"TKM","Kollam");
insert into College values(12988,"GEC","Trissur");

create table Faculty(college_code int,faculty_code int,faculty_name varchar(40),qualification varchar(30),experience int,department varchar(10),address varchar(25), PRIMARY KEY(faculty_code), FOREIGN KEY (college_code) REFERENCES College(college_code) );

insert into Faculty values(12983, 100, "Milan Varghese", "M.Tech", 10, "CSE", "Njaliyakuzhi, Kottayam");
insert into Faculty values(12983, 101, "Darshan S", "B.Tech", 12, "Mech", "Munnar");
insert into Faculty values(12986, 102, "Anson Anthrayose Thomas", "M.Tech", 15, "ECE", "Chingavanam, Kottayam");
insert into Faculty values(12982, 103, "Gokul Das", "M.Tech", 15, "CSE", "Kozhikode");
insert into Faculty values(12988, 104, "Sreerag M", "B.Tech", 9, "CSE", "Kottakal, Malappuram");
insert into Faculty values(12982, 105, "Anjali NV", "B.Tech", 16, "CSE", "Kannur");
insert into Faculty values(12983, 106, "Aswin US", "B.Tech", 17, "ECE", "Sreevalsom, Trivandrum");
insert into Faculty values(12988, 107, "Dona Johnson", "B.Tech", 11, "CSE", "Manthuruthy, Kottayam");

select * from Faculty;
select * from College;
-- 1
select c.college_name, f.faculty_name, f.experience
from Faculty f, College c
where experience>=10 and c.college_code = f.college_code and c.college_name="CET";
-- 2
select c.college_name, f.faculty_name, f.experience, f.qualification
from Faculty f, College c
where experience>=10 and f.qualification!= "M.Tech" and c.college_code = f.college_code and c.college_name="RIT";
-- 3
select f.faculty_name, c.college_name, f.department, f.experience
from Faculty f, College c
where c.college_code = f.college_code and c.college_name = "RIT"
ORDER BY f.department, f.experience desc;
-- 4
select c.college_name, COUNT(f.faculty_name) as "Count>1"
from Faculty f, College c
where f.college_code = c.college_code 
GROUP BY f.college_code
HAVING Count(f.faculty_code) > 1;
-- 5
select count(*) from Faculty group by college_code order by count(*) LIMIT 1 into @varl;
select count(*) from Faculty group by college_code order by count(*) desc LIMIT 1 into @varh;
select college_code from Faculty group by college_code having count(*) = @varl into @varlc;
select college_code from Faculty group by college_code having count(*) = @varh into @varhc;
select college_name as 'College with least faculty' from College where college_code=@varlc;
select college_name as 'College with most faculty' from College where college_code=@varhc;


drop table Faculty;
drop table College;
drop database Ktu;
