create database test;
use test;

create table Book (
	accession_no INT PRIMARY KEY,
	title VARCHAR(50),
	publisher VARCHAR(50),
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

INSERT INTO Book VALUES
("122","MIDNIGHT CHILDREN","SALMAN RUSHDIE","1947","2002-05-18","ISSUED"),
("123","THE MAGIC MOUNTAIN","THOMAS MANN","1998","2003-05-28","ISSUED"),
("124","GREAT EXPECTATIONS","CHARLES DICKENS","2005","2008-01-28","ISSUED"),
("125","LEAVES OF GRASS","WALT WHITMAN","2008","2011-11-26","ISSUED"),
("126","TRISTRAM SHANDY","LAURENCE STRENE","1996","2002-01-08","ISSUED"),
("127","DAVID COPPERFIELD","CHARLES DICKENS","1999","2003-02-07","ISSUED"),
("128","THE AENEID","VIRGIL","2000","2001-12-10","ISSUED"),
("129","JANE EYRE","CHARLOTTE BRONTE","2010","2011-04-05","ISSUED"),
("130","THE STRANGER","ALBERT CAMUS","2021","2022-04-12","ISSUED"),
("131","BELOVED","TONI MORRISON","2004","2021-07-22","ISSUED"),
("132","MIDDLEMARCH","GEORGE ELIOT","2002","2004-10-21","ISSUED"),
("133","INVISIBLE MAN","RALPH ELLISON","2006","2007-10-10","ISSUED"),
("134","MIDNIGHT CHILDREN","SALMAN RUSHDIE","1947","2002-05-18","NOT ISSUED"),
("135","THE MAGIC MOUNTAIN","THOMAS MANN","1998","2003-05-28","NOT ISSUED"),
("136","GREAT EXPECTATIONS","CHARLES DICKENS","2005","2008-01-28","NOT ISSUED"),
("137","LEAVES OF GRASS","WALT WHITMAN","2008","2011-11-26","NOT ISSUED"),
("138","TRISTRAM SHANDY","LAURENCE STRENE","1996","2002-01-08","NOT ISSUED"),
("139","DAVID COPPERFIELD","CHARLES DICKENS","1999","2003-02-07","NOT ISSUED"),
("140","THE AENEID","VIRGIL","2000","2001-12-10","NOT ISSUED"),
("141","JANE EYRE","CHARLOTTE BRONTE","2010","2011-04-05","NOT ISSUED"),
("142","THE STRANGER","ALBERT CAMUS","2021","2022-04-12","NOT ISSUED"),
("143","BELOVED","TONI MORRISON","2004","2021-07-22","NOT ISSUED"),
("144","MIDDLEMARCH","GEORGE ELIOT","2002","2004-10-21","NOT ISSUED"),
("145","INVISIBLE MAN","RALPH ELLISON","2006","2007-10-10","NOT ISSUED"),
("146","MIDNIGHT CHILDREN","SALMAN RUSHDIE","1947","2002-05-18","REFERENCE"),
("147","THE MAGIC MOUNTAIN","THOMAS MANN","1998","2003-05-28","REFERENCE"),
("148","GREAT EXPECTATIONS","CHARLES DICKENS","2005","2008-01-28","REFERENCE"),
("149","LEAVES OF GRASS","WALT WHITMAN","2008","2011-11-26","REFERENCE"),
("150","TRISTRAM SHANDY","LAURENCE STRENE","1996","2002-01-08","REFERENCE"),
("151","DAVID COPPERFIELD","CHARLES DICKENS","1999","2003-02-07","REFERENCE"),
("152","THE AENEID","VIRGIL","2000","2001-12-10","REFERENCE"),
("153","JANE EYRE","CHARLOTTE BRONTE","2010","2011-04-05","REFERENCE"),
("154","THE STRANGER","ALBERT CAMUS","2021","2022-04-12","REFERENCE"),
("155","BELOVED","TONI MORRISON","2004","2021-07-22","REFERENCE"),
("156","MIDDLEMARCH","GEORGE ELIOT","2002","2004-10-21","REFERENCE"),
("157","INVISIBLE MAN","RALPH ELLISON","2006","2007-10-10","REFERENCE");

INSERT INTO Member VALUES
("2010","JOHN WICK","3","5"),
("2011","MONKEY D LUFFY","2","6"),
("2012","TONY STARK","8","8"),
("2013","STEVEN GRANT ROGERS","1","2"),
("2014","CLINTON FRANCIS BARTON","2","7"),
("2015","WANDA MAXIMOFF","4","5"),
("2016","T CHALLA","1","5"),
("2017","VICTOR SHADE","4","4"),
("2018","THOR ODINSON","0","1"),
("2019","NATASHA ROMANOFF","4","5"),
("2020","JENNIFER SUSAN","4","5");


INSERT INTO Books_issue VALUES
("122","2010","2005-11-18"),
("123","2010","2022-11-18"),
("124","2010","2022-11-18"),
("125","2011","2022-11-18"),
("126","2011","2022-11-18"),
("127","2012","2022-11-18"),
("128","2012","2011-11-18"),
("129","2012","2022-11-18"),
("130","2012","2022-11-18"),
("131","2012","2021-11-18"),
("132","2012","2022-11-18"),
("133","2012","2022-11-18"),
("122","2012","2022-11-18"),
("123","2013","2022-11-18"),
("124","2014","2022-11-18"),
("125","2014","2022-11-18"),
("126","2015","2022-11-18"),
("127","2015","2021-11-18"),
("128","2015","2022-11-18"),
("129","2015","2022-11-18"),
("130","2016","2022-11-18"),
("131","2017","2022-11-18"),
("132","2017","2022-11-18"),
("133","2017","2022-11-18"),
("122","2017","2022-11-18"),
("123","2017","2022-11-18"),
("124","2019","2022-11-18"),
("125","2019","2020-11-18"),
("126","2019","2022-11-18"),
("127","2019","2022-11-18"),
("128","2020","2022-11-18"),
("129","2020","2022-11-18"),
("130","2020","2022-11-18"),
("132","2020","2022-11-18");




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

select DISTINCT Book.title, Book.publisher, Book.year, Book.date_of_purchase
from Book NATURAL JOIN Books_issue
where title in (select title from Books_issue NATURAL JOIN Book 
group by title having count(*)=0);

drop table Member;
drop table Books_issue;
drop table Book;
drop database test;