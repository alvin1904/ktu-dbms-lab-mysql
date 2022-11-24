create database test;
use test;

create table Branch (
branch_id INT PRIMARY KEY,
branch_name VARCHAR(50),
branch_city VARCHAR(18)
);
insert into Branch values
(401,"Thiruvananthapuram","Thiruvananthapuram"),
(402,"Kottayam","Kottayam"),
(403,"Ernakulam","Kochi"),
(404,"Kozhikode","Kozhikode");

create table Customer (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
customer_city VARCHAR(25)
);
insert into Customer values
(6001,"Ananthakrishnan","Thiruvananthapuram"),
(6002,"Irfan","Thiruvananthapuram"),
(6003,"Suneeth","Thiruvananthapuram"),
(6004,"Sreejith","Kottayam"),
(6005,"Jafar","Kazhakoottam"),
(6006,"Radika","Pampady"),
(6007,"Jameela","Kanjikuzhi"),
(6008,"Bindu","Kottayam"),
(6009,"Purushothaman","Kollam"),
(6010,"Vincy","Kottayam"),
(6011,"Abdul Rahman","Thrissur"),
(6012,"Vishwanathan","Ernakulam"),
(6013,"Marykutty","Mattancheri"),
(6014,"Hajara","Ernakulam"),
(6015,"Revathy","Kozhikode"),
(6016,"Hameed","Perambra"),
(6017,"Suchithra","Kozhikode"),
(6018,"Saneesh","North Paravoor"),
(6019,"Gokul Das","Kozhikode"),
(6020,"Abraham","Kappad");

create table Savings (
customer_id INT,
sbranch_id INT,
savings_accno INT,
sbalance INT,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (sbranch_id) REFERENCES Branch (branch_id)
);
insert into Savings values
(6001,401,6400101,15000),
(6002,401,6400102,200000),
(6005,401,6400105,30000),
(6007,401,6400107,70000),
(6004,402,6400204,400000),
(6006,402,6400206,100000),
(6007,402,6400207,40000),
(6008,402,6400208,74000),
(6010,402,6400210,128507),
(6011,403,6400311,700000),
(6001,403,6400301,200000),
(6012,403,6400312,500000),
(6013,403,6400313,250000),
(6015,404,6400415,100000),
(6016,404,6400416,90756);

create table Loan (
customer_id INT,
lbranch_id INT,
loan_accno INT,
lbalance INT,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (lbranch_id) REFERENCES Branch (branch_id)
);
insert into Loan values
(6005,401,4600105,100000),
(6003,401,4600103,200000),
(6009,401,4600109,150000),
(6019,401,4600119,100000),
(6011,403,4600311,1000000),
(6013,403,4600313,500000),
(6014,403,4600314,300000),
(6018,403,4600318,300000),
(6006,403,4600306,100000),
(6009,403,4600309,200000),
(6014,404,4600414,100000),
(6016,404,4600416,150000),
(6017,404,4600417,200000),
(6019,404,4600419,300000),
(6020,404,4600419,400000),
(6008,404,4600408,100000);

select * from Branch;
select * from Savings;
select * from Loan;
select * from Customer;

/* PART a */
/*
select Loan.customer_id from Loan, Branch, Customer
where Loan.lbranch_id = Branch.branch_id and Loan.customer_id = Customer.customer_id and Customer.customer_city = Branch.Branch_city;

select Savings.customer_id from Savings, Branch, Customer
where Savings.sbranch_id = Branch.branch_id and Savings.customer_id = Customer.customer_id and Customer.customer_city = Branch.Branch_city;
*/
select * from Customer
where customer_id IN(
select Savings.customer_id from Savings, Branch, Customer
where Savings.sbranch_id = Branch.branch_id and Savings.customer_id = Customer.customer_id and Customer.customer_city = Branch.Branch_city)
or customer_id IN(
select Loan.customer_id from Loan, Branch, Customer
where Loan.lbranch_id = Branch.branch_id and Loan.customer_id = Customer.customer_id and Customer.customer_city = Branch.Branch_city
);


/* PART b */
select Customer.customer_id as 'With_Loan_account_in_Alappuzha', customer_name, customer_city from Loan, Branch, Customer
where Loan.lbranch_id = Branch.branch_id and Customer.customer_id = Loan.customer_id and Branch.branch_city = 'Alappuzha';

select Customer.customer_id as 'With_Savings_account_in_Alappuzha', customer_name, customer_city from Savings, Branch, Customer
where Savings.sbranch_id = Branch.branch_id and Customer.customer_id = Savings.customer_id and Branch.branch_city = 'Alappuzha';


/* PART c */







/* PART d */
select * , 'Loan Acc only' as 'part d q' from Customer
where customer_id IN (select customer_id from Loan where customer_id NOT IN (select customer_id from Savings));

select *, 'Savings Acc only' as 'part d q' from Customer
where customer_id IN (select customer_id from Savings where customer_id NOT IN (select customer_id from Loan));

select *, 'Both Loan & Savings Accs' as 'part d q' from Customer
where customer_id IN (select DISTINCT customer_id from Loan where customer_id IN (select customer_id from Savings));


/* PART e */
/*select customer_id from Loan
group by customer_id having count(*)>1;
select customer_id from Savings
where sbalance=0;*/
select * from Customer where customer_id IN (select customer_id from Loan
group by customer_id having count(*)>1) and customer_id IN (select customer_id from Savings
where sbalance=0);


/* PART f */
select customer_id from Customer where customer_id NOT IN (select customer_id from Loan group by customer_id);
select customer_id from Customer where customer_id NOT IN (select customer_id from Savings group by customer_id);
select customer_id from Customer where customer_id IN (select customer_id from Loan group by customer_id)
and customer_id IN (select customer_id from Savings group by customer_id);


/* PART g */
select branch_id as 'Branch_with_max_loan_amt', branch_name, branch_city from Branch
where branch_id = (select lbranch_id from Loan
group by lbranch_id order by sum(lbalance) desc limit 1);


/* PART h */
select branch_id as 'Branch_with_no_loans', branch_name, branch_city from Branch
where branch_id NOT IN (select lbranch_id from Loan group by lbranch_id);


/* PART i */
/*select customer_id, customer_name, sum(sbalance)
from Customer NATURAL JOIN Savings
group by customer_id, customer_name;
*/
select CustomerTemp.*, lbalance, lbranch_id
from (select customer_id, customer_name, sum(sbalance) from Customer NATURAL JOIN Savings
group by customer_id, customer_name) as CustomerTemp NATURAL JOIN Loan;



drop table Loan;
drop table Savings;
drop table Customer;
drop table Branch;
drop database test;