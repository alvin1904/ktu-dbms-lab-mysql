create database test;
use test;

create table Book (
	accession_no INT PRIMARY KEY,
	title VARCHAR(25),
	publisher VARCHAR(7),
	year INT,
	date_of_purchase VARCHAR(10),
	status VARCHAR(10)
);
create table Member (
	member_id INT PRIMARY KEY,
	name VARCHAR(50),
	number_of_books_issued INT,
	max_limit INT
);
create table Books_issue (
	accession_no INT,
	member_id INT,
	date_of_issue DATE,
    FOREIGN KEY (accession_no) REFERENCES Book (accession_no)
);

insert into Book values (1, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (2, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (3, 'DSA using C++', 'Oxford', 2021, '2021-10-22', 'issued');
insert into Book values (4, 'DSA using C++', 'Oxford', 2021, '2021-10-22', 'issued');
insert into Book values (5, 'DSA using Py', 'Oxford', 2021, '2022-07-26', 'issued');
insert into Book values (6, 'DSA using Py', 'Oxford', 2021, '2022-07-26', 'not_issued');
insert into Book values (7, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (8, 'DSA using Py', 'Oxford', 2021, '2022-07-26', 'issued');
insert into Book values (9, 'DSA using Py', 'Oxford', 2021, '2022-07-26', 'issued');
insert into Book values (10, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (11, 'DSA using Js', 'Oxford', 2020, '2022-04-21', 'issued');
insert into Book values (12, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (13, 'DSA using C++', 'Oxford', 2021, '2021-10-22', 'issued');
insert into Book values (14, 'DSA using Py', 'Oxford', 2021, '2022-07-26', 'issued');
insert into Book values (15, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (16, 'DSA using C++', 'Oxford', 2021, '2021-10-22', 'not_issued');
insert into Book values (17, 'DSA using C++', 'Oxford', 2021, '2021-10-22', 'issued');
insert into Book values (18, 'DSA using C++', 'Oxford', 2021, '2021-10-22', 'not_issued');
insert into Book values (19, 'DSA using Java', 'New Age', 2020, '2021-11-03', 'issued');
insert into Book values (20, 'DSA using Js', 'Oxford', 2020, '2022-04-21', 'issued');

insert into Member values (1, 'Lucian', 1, 3);
insert into Member values (2, 'Shadow', 1, 9);
insert into Member values (3, 'Kailey', 2, 3);
insert into Member values (4, 'Tiffanie', 4, 9);
insert into Member values (5, 'Nicko', 3, 6);
insert into Member values (6, 'Huntington', 3, 3);
insert into Member values (7, 'Stanleigh', 3, 3);

insert into Books_issue values (1, 7, '2022-10-04');
insert into Books_issue values (2, 5, '2022-10-19');
insert into Books_issue values (3, 3, '2022-10-10');
insert into Books_issue values (4, 7, '2022-10-14');
insert into Books_issue values (5, 5, '2022-10-06');
insert into Books_issue values (7, 2, '2022-10-05');
insert into Books_issue values (8, 7, '2022-10-07');
insert into Books_issue values (9, 4, '2022-10-07');
insert into Books_issue values (10, 1, '2022-10-06');
insert into Books_issue values (11, 6, '2022-10-05');
insert into Books_issue values (12, 6, '2022-10-07');
insert into Books_issue values (13, 5, '2022-10-09');
insert into Books_issue values (14, 6, '2022-10-15');
insert into Books_issue values (15, 4, '2022-10-18');
insert into Books_issue values (17, 4, '2022-10-23');
insert into Books_issue values (19, 1, '2022-10-01');
insert into Books_issue values (20, 4, '2022-10-22');

/* PART 1 */
select accession_no, title, publisher
from Book
where accession_no in (select accession_no from Books_issue
where DATEDIFF(date(now()),date_of_issue)>15);
/* 
select accession_no from Books_issue
where DATEDIFF(date(now()),date_of_issue)>15; */


/* PART 2 */
select * from Member
where number_of_books_issued=max_limit;


/* PART 3 */
/* select * from Book NATURAL JOIN Books_issue; */
select title, count(*) as 'Book_with_least_issues'
from (select * from Book NATURAL JOIN Books_issue) as T1
group by title
order by count(*) LIMIT 1;

select title, count(*) as 'Book_with_most_issues'
from (select * from Book NATURAL JOIN Books_issue) as T1
group by title
order by count(*) desc LIMIT 1;


/* PART 4 */
select count(*) from Member into @noofmembers; 
/* select title from Books_issue NATURAL JOIN Book 
group by title having count(*)=@noofmembers; */
select DISTINCT Book.title, Book.publisher, Book.year, Book.date_of_purchase
from Book NATURAL JOIN Books_issue
where title in (select title from Books_issue NATURAL JOIN Book 
group by title having count(*)=@noofmembers);



drop table Member;
drop table Books_issue;
drop table Book;
drop database test;