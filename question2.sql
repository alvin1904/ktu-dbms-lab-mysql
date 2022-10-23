create database test;
use test;

create table Book (
	accession_no INT PRIMARY KEY,
	title VARCHAR(25),
	publisher VARCHAR(7),
	author VARCHAR(20),
	date_of_purchase DATE,
	date_of_publishing VARCHAR(10),
	status VARCHAR(22)
);
insert into Book values (1, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2014-08-02', '2012-07-26', 'present in the Library');
insert into Book values (2, 'DSA using Java', 'New Age', 'Reta Kief', '2014-04-01', '2009-11-03', 'cannot be issued');
insert into Book values (3, 'DSA using Java', 'New Age', 'Reta Kief', '2012-09-21', '2009-11-03', 'reference');
insert into Book values (4, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2012-08-11', '2012-07-26', 'cannot be issued');
insert into Book values (5, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2013-05-10', '2012-07-26', 'present in the Library');
insert into Book values (6, 'DSA using Java', 'New Age', 'Reta Kief', '2014-04-25', '2009-11-03', 'issued');
insert into Book values (7, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2012-08-02', '2012-07-26', 'reference');
insert into Book values (8, 'DSA using Java', 'New Age', 'Reta Kief', '2011-02-04', '2009-11-03', 'present in the Library');
insert into Book values (9, 'DSA using Java', 'New Age', 'Reta Kief', '2012-06-09', '2009-11-03', 'present in the Library');
insert into Book values (10, 'DSA using Js', 'Oxford', 'Alexei Belfield', '2013-10-18', '2012-04-21', 'reference');
insert into Book values (11, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2013-08-27', '2012-07-26', 'present in the Library');
insert into Book values (12, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2014-07-24', '2012-07-26', 'issued');
insert into Book values (13, 'DSA using Java', 'New Age', 'Reta Kief', '2010-01-25', '2009-11-03', 'reference');
insert into Book values (14, 'DSA using Java', 'New Age', 'Reta Kief', '2012-04-07', '2009-11-03', 'reference');
insert into Book values (15, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2010-08-25', '2008-07-09', 'reference');
insert into Book values (16, 'DSA using Java', 'New Age', 'Reta Kief', '2010-07-03', '2009-11-03', 'reference');
insert into Book values (17, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2014-12-16', '2008-07-09', 'present in the Library');
insert into Book values (18, 'DSA using Java', 'New Age', 'Reta Kief', '2010-08-29', '2009-11-03', 'present in the Library');
insert into Book values (19, 'DSA using C++', 'Oxford', 'Otto Edmonstone', '2012-02-15', '2009-10-22', 'issued');
insert into Book values (20, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2010-05-25', '2008-07-09', 'reference');
insert into Book values (21, 'DSA using C++', 'Oxford', 'Otto Edmonstone', '2013-05-06', '2009-10-22', 'present in the Library');
insert into Book values (22, 'DSA using Java', 'New Age', 'Reta Kief', '2012-06-22', '2009-11-03', 'present in the Library');
insert into Book values (23, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2014-01-17', '2012-07-26', 'cannot be issued');
insert into Book values (24, 'DSA using Js', 'Oxford', 'Alexei Belfield', '2012-10-23', '2012-04-21', 'reference');
insert into Book values (25, 'DSA using C++', 'Oxford', 'Otto Edmonstone', '2012-04-03', '2009-10-22', 'reference');
insert into Book values (26, 'DSA using Java', 'New Age', 'Reta Kief', '2012-03-03', '2009-11-03', 'reference');
insert into Book values (27, 'DSA using Java', 'New Age', 'Reta Kief', '2012-10-31', '2009-11-03', 'issued');
insert into Book values (28, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2010-03-21', '2008-07-09', 'issued');
insert into Book values (29, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2014-05-18', '2012-07-26', 'issued');
insert into Book values (30, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2014-03-08', '2008-07-09', 'present in the Library');
insert into Book values (31, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2013-04-20', '2012-07-26', 'issued');
insert into Book values (32, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2010-09-05', '2008-07-09', 'cannot be issued');
insert into Book values (33, 'DSA using Py', 'Oxford', 'Meredith Dillingston', '2012-11-10', '2012-07-26', 'present in the Library');
insert into Book values (34, 'DSA using C for Beginners', 'New Age', 'Holt Pflieger', '2010-01-05', '2008-07-09', 'reference');
insert into Book values (35, 'DSA using Js', 'Oxford', 'Alexei Belfield', '2013-02-20', '2012-04-21', 'present in the Library');

/* select * from Book; */

/* FIRST PART */
select title, count(*) as "No_of_copies_in_library"
from Book
group by title
order by title;


/* SECOND PART */
select title, count(*) as "No_of_reference_copies"
from Book
group by title, status
having status = 'reference';


/* THIRD PART */
select title, status, count(*) as "No_of_books"
from Book
group by title, status
order by title, status;


/* FOURTH PART */
select *
from Book
where status = 'issued'
order by publisher;

/* LET TODAYS DATE BE 2014-12-31*/
/* FIFTH PART */
select *
from Book
where datediff('2014-12-31',date_of_purchase)/30 < 6
order by date_of_purchase desc;


/* SIXTH PART */
select *
from Book
where datediff(date_of_purchase, date_of_publishing) < 365 and title in (select title from Book group by title having count(*)>=10)
order by accession_no;


drop table Book;
drop database test;