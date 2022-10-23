create database test;
use test;

create table Student (
	rollno INT PRIMARY KEY,
	name VARCHAR(50),
	category VARCHAR(3),
	district VARCHAR(18),
	state VARCHAR(50)
);

create table Student_rank (
	rollno INT,
	marks INT,
	ranks INT,
    FOREIGN KEY (rollno) REFERENCES Student(rollno)
    );

insert into Student values (1, 'Farrand', 'GEN', 'Kozhikode', 'Kerala');
insert into Student values (2, 'Raleigh', 'OBC', 'Noida', 'Uttar Pradesh');
insert into Student values (3, 'Barton', 'OBC', 'Palakkad', 'Kerala');
insert into Student values (4, 'Mandie', 'GEN', 'Kozhikode', 'Kerala');
insert into Student values (5, 'Emlyn', 'OBC', 'Lucknow', 'Uttar Pradesh');
insert into Student values (6, 'Jaymee', 'SC', 'Ernakulam', 'Kerala');
insert into Student values (7, 'Pyotr', 'SC', 'Thrissur', 'Kerala');
insert into Student values (8, 'Moll', 'GEN', 'Kozhikode', 'Kerala');
insert into Student values (9, 'Brena', 'OBC', 'Chennai', 'Tamil Nadu');
insert into Student values (10, 'Madlin', 'SC', 'Ernakulam', 'Kerala');
insert into Student values (11, 'Ralph', 'SC', 'Coimbatore', 'Tamil Nadu');
insert into Student values (12, 'Janka', 'GEN', 'Tirunelveli', 'Tamil Nadu');
insert into Student values (13, 'Almeria', 'OBC', 'Thanjavur', 'Tamil Nadu');
insert into Student values (14, 'Ryan', 'SC', 'Ernakulam', 'Kerala');
insert into Student values (15, 'Nickolai', 'GEN', 'Thrissur', 'Kerala');
insert into Student values (16, 'Cecelia', 'OBC', 'Palakkad', 'Kerala');
insert into Student values (17, 'Stevie', 'OBC', 'Moradabad', 'Uttar Pradesh');
insert into Student values (18, 'Jo ann', 'OBC', 'Kozhikode', 'Kerala');
insert into Student values (19, 'Pen', 'SC', 'Ahmedabad', 'Uttar Pradesh');
insert into Student values (20, 'Calhoun', 'OBC', 'Palakkad', 'Kerala');
insert into Student values (21, 'Cindelyn', 'GEN', 'Moradabad', 'Uttar Pradesh');
insert into Student values (22, 'Hanan', 'OBC', 'Palakkad', 'Kerala');
insert into Student values (23, 'Desiri', 'OBC', 'Noida', 'Uttar Pradesh');
insert into Student values (24, 'Raeann', 'SC', 'Ernakulam', 'Kerala');
insert into Student values (25, 'Gifford', 'OBC', 'Ernakulam', 'Kerala');
insert into Student values (26, 'Worthy', 'OBC', 'Ernakulam', 'Kerala');
insert into Student values (27, 'Rich', 'SC', 'Thrissur', 'Kerala');
insert into Student values (28, 'Celestyn', 'SC', 'Ernakulam', 'Kerala');
insert into Student values (29, 'Isabelle', 'GEN', 'Thanjavur', 'Tamil Nadu');
insert into Student values (30, 'Orelee', 'GEN', 'Tirunelveli', 'Tamil Nadu');

insert into Student_rank values (1, 14, 71);
insert into Student_rank values (2, 4, 173);
insert into Student_rank values (3, 19, 13);
insert into Student_rank values (4, 9, 109);
insert into Student_rank values (5, 19, 6);
insert into Student_rank values (6, 18, 29);
insert into Student_rank values (7, 16, 67);
insert into Student_rank values (8, 20, 1);
insert into Student_rank values (9, 14, 87);
insert into Student_rank values (10, 17, 50);
insert into Student_rank values (11, 11, 91);
insert into Student_rank values (12, 17, 48);
insert into Student_rank values (13, 5, 136);
insert into Student_rank values (14, 8, 108);
insert into Student_rank values (15, 13, 83);
insert into Student_rank values (16, 12, 83);
insert into Student_rank values (17, 12, 61);
insert into Student_rank values (18, 10, 94);
insert into Student_rank values (19, 17, 16);
insert into Student_rank values (20, 6, 150);
insert into Student_rank values (21, 20, 5);
insert into Student_rank values (22, 4, 172);
insert into Student_rank values (23, 8, 154);
insert into Student_rank values (24, 5, 116);
insert into Student_rank values (25, 3, 191);
insert into Student_rank values (26, 19, 10);
insert into Student_rank values (27, 7, 111);
insert into Student_rank values (28, 8, 108);
insert into Student_rank values (29, 15, 71);
insert into Student_rank values (30, 20, 2);

/* 
select * from Student;
select * from Student_rank; */
/* select * from Student NATURAL JOIN Student_rank; */



/* Part 1 */
select *
from (select * from Student NATURAL JOIN Student_rank) a JOIN (select * from Student NATURAL JOIN Student_rank) b
where a.category = b.category && a.ranks = b.ranks && a.rollno < b.rollno
order by a.rollno;



/* Part 2 */
select * from Student, Student_rank
where Student.rollno = Student_rank.rollno and ranks in (select MIN(ranks) from Student, Student_rank
    where Student.rollno = Student_rank.rollno
    group by state, category)
order by state, category;  



/* Part 3 */
select *, 
case when a.ranks=b.ranks then 'Same Rank'
else 'Same Marks'
end as Comments
from (select * from Student NATURAL JOIN Student_rank) a JOIN (select * from Student NATURAL JOIN Student_rank) b
where (a.ranks=b.ranks && a.marks!=b.marks && a.rollno < b.rollno) || (a.ranks!=b.ranks && a.marks=b.marks && a.rollno < b.rollno);



/* Part 4 */
select max(ranks), min(ranks)
from Student NATURAL JOIN Student_rank
into @var1, @var2;

select *, 
case when ranks=@var1 then 'Least performing category'
else 'Highest performing category'
end as Comments
from Student NATURAL JOIN Student_rank
where ranks = @var1 || ranks = @var2;



/* Part 5 */
select Avg(marks)
from Student NATURAL JOIN Student_rank
into @avgmarks;

select category, Avg(marks) as 'Average_of_category', @avgmarks as 'Average_academic_performance'
from Student NATURAL JOIN Student_rank
group by category
having avg(marks) < @avgmarks;



drop table Student_rank;
drop table Student;
drop database test;