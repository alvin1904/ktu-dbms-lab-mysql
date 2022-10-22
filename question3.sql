create database Rit;
use Rit;

create table Course(course_id int, cname varchar(40), fee int, duration int, PRIMARY KEY(course_id));
create table Student(roll_no int, name varchar(40), date_of_birth date, course_id int, FOREIGN KEY (course_id) REFERENCES Course(course_id));

insert into Course values(1, 'B.Tech', 8500, 4);
insert into Course values(2, 'M.Tech', 12000, 2);
insert into Course values(3, 'Robotics', 4000, 1);
insert into Course values(4, 'MCA', 10000, 2);
insert into Course values(5, 'Python', 5000, 1);

insert into Student values(1, 'Afiya', '2001-01-01',2);
insert into Student values(1, 'Afiya', '2001-01-01',5);
insert into Student values(2, 'Eldose', '2003-02-01',4);
insert into Student values(3, 'Abru', '2000-04-01',5);
insert into Student values(4, 'Advait', '2004-07-01',5);
insert into Student values(5, 'Anson', '2000-06-01',1);
insert into Student values(5, 'Anson', '2000-06-01',5);
insert into Student values(6, 'Asif', '1999-01-11',2);
insert into Student values(6, 'Asif', '1999-01-11',5);
insert into Student values(7, 'Aswin', '2000-12-01',2);
insert into Student values(8, 'Davood', '2004-06-30',1);
insert into Student values(9, 'Abin', '2002-04-21',5);
insert into Student values(10, 'Amalia', '2002-07-11',1);
insert into Student values(10, 'Amalia', '2002-07-11',5);
insert into Student values(11, 'Aleesha', '2002-07-21',4);
insert into Student values(11, 'Aleesha', '2002-07-21',1);
insert into Student values(11, 'Aleesha', '2002-07-21',2);
insert into Student values(11, 'Aleesha', '2002-07-21',5);
insert into Student values(11, 'Aleesha', '2002-07-21',3);


/*FIRST Q*/
select s.name, s.date_of_birth, c.cname
from  Student s, Course c
where s.course_id=c.course_id and s.date_of_birth<'2003-12-31' and c.cname='B.Tech';

/*SECOND Q*/
select * from Course where fee>(Select fee from Course where cname='B.Tech');

/*THIRD Q*/
select name, roll_no, date_of_birth, count(*) as 'Number of courses'
from Student
group by name,roll_no,date_of_birth
having count(*)>=2;

/*FOURTH Q*/
select count(*)
from Student
group by course_id
order by count(*) desc limit 1
into @var1;

select course_id
from Student
group by course_id
having count(*) = @var1
into @var2;

select count(*)
from Student
group by course_id
order by count(*) limit 1
into @var3;

select course_id
from Student
group by course_id
having count(*) = @var3
into @var4;


select course_id 'Max taken course', cname, fee, duration
from Course
where course_id=@var2;
select course_id 'Min taken course', cname, fee, duration
from Course
where course_id=@var4;

/*FIFTH Q*/
select count(*) from Course into @var5;

select roll_no, name, date_of_birth from Student
group by name,roll_no,date_of_birth
having count(*) = @var5;



/*
select * from Course;
select * from Student;
*/
drop table Student;
drop table Course;
drop database Rit;
