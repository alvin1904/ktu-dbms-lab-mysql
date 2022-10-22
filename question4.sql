create database test;
use test;

create table Student(rollno int, name varchar(30), category varchar(20), district varchar(20), state varchar(20), PRIMARY KEY (rollno));
/* desc Student; */

create table Student_rank(rollno int, mark int, ranks int, FOREIGN KEY (rollno) REFERENCES Student (rollno));
/* desc Student_rank; */

insert into Student values(1, 'A', 'GEN', 'Kottayam', 'Kerala');
insert into Student values(1, 'A', 'GEN', 'Kottayam', 'Kerala');
insert into Student values(1, 'A', 'GEN', 'Kottayam', 'Kerala');
insert into Student values(1, 'A', 'GEN', 'Kottayam', 'Kerala');
insert into Student values(1, 'A', 'GEN', 'Kottayam', 'Kerala');
insert into Student values(1, 'A', 'GEN', 'Kottayam', 'Kerala');





















/* Part 1 */

/* Part 2 */

/* Part 3 */

/* Part 4 */

/* Part 5 */

drop table Student_rank;
drop table Student;
drop database test;