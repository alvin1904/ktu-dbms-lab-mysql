create database test;
use test;

create table Branch (
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(50),
	branch_city VARCHAR(18)
);
insert into Branch values (8503, 'Highton', 'Alappuzha');
insert into Branch values (8261, 'Dupree', 'Ernakulam');
insert into Branch values (6045, 'Kolczynski', 'Idukki');
insert into Branch values (2264, 'Forsbey', 'Kannur');

create table Customer (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(50),
	customer_city VARCHAR(12)
);
insert into Customer values (304, 'Keane', 'Kannur');
insert into Customer values (195, 'Bess', 'Alappuzha');
insert into Customer values (943, 'Glynda', 'Idukki');
insert into Customer values (821, 'Karalynn', 'Alappuzha');
insert into Customer values (172, 'Caresa', 'Idukki');
insert into Customer values (928, 'Linet', 'Kannur');
insert into Customer values (317, 'Royall', 'Kannur');
insert into Customer values (927, 'Gusta', 'Kannur');

create table Savings (
	customer_id INT,
	sbranch_id INT,
	savings_accno INT PRIMARY KEY,
	sbalance INT,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (sbranch_id) REFERENCES Branch (branch_id)
);
insert into Savings values (304, 2264, 291818, 22600);
insert into Savings values (195, 8261, 961213, 23900);
insert into Savings values (943, 8261, 755345, 19900);
insert into Savings values (821, 6045, 471083, 23000);
insert into Savings values (172, 8261, 527949, 25900);
insert into Savings values (928, 8261, 715031, 22100);
insert into Savings values (317, 8503, 846611, 29600);
insert into Savings values (927, 8503, 011323, 29700);
insert into Savings values (928, 8261, 832197, 27600);
insert into Savings values (195, 8503, 206816, 11900);
insert into Savings values (821, 8503, 542234, 22900);
insert into Savings values (317, 8503, 526611, 25800);

create table Loan (
customer_id INT,
lbranch_id INT,
loan_accno INT PRIMARY KEY,
lbalance INT,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (lbranch_id) REFERENCES Branch (branch_id)
);
insert into Loan values (304, 8261, 491911, 100000);
insert into Loan values (195, 8261, 961914, 500000);
insert into Loan values (943, 6045, 471345, 250000);
insert into Loan values (821, 6045, 19784, 100000);
insert into Loan values (172, 8503, 947941, 250000);
insert into Loan values (928, 8261, 195031, 1000000);
insert into Loan values (317, 8503, 449611, 1000000);
insert into Loan values (927, 8503, 412923, 250000);
insert into Loan values (928, 2264, 139177, 100000);
insert into Loan values (195, 2264, 797216, 1000000);
insert into Loan values (821, 8503, 442931, 250000);
insert into Loan values (317, 2264, 176691, 500000);

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

select * from Customer;
/* PART d */

/* PART e */

/* PART f */

/* PART g */

/* PART h */


drop table Loan;
drop table Savings;
drop table Customer;
drop table Branch;
drop database test;