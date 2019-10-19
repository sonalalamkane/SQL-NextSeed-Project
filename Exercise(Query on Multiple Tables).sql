create database Exercise;
use Exercise;

create table salesman(
	salesman_id int(5)Not null Primary key,
    sname varchar(20) Not null,
    city varchar(15)Not null,
    commission float(5)
);

insert into salesman values(5001,'James Hoog','New York',0.15);
insert into salesman values(5002,'Nail Knite','Paris',0.13);
insert into salesman values(5005,'Pit Alex','London',0.11);
insert into salesman values(5006,'Mc Lyon','Paris',0.14);
insert into salesman values(5007,'Paul Adam','Rome',0.13);
insert into salesman values(5003,'Lauson Hen','San Jose',0.12);

create table customer(
	customer_id int(5)Not null Primary key,
    cust_name varchar(20) Not null,
    city varchar(15)Not null,
    grade int(4),
    salesman_id int(5)Not null
);


insert into customer values(3002,'Nick Rimando','New York',100,5001);
insert into customer values(3007,'Brad Davis','New York',200,5001);
insert into customer values(3005,'Graham Zusi','California',200,5002);
insert into customer values(3008,'Julian Green','London',300,5002);
insert into customer values(3004,'Fabian Johnson','Paris',300,5006);
insert into customer values(3009,'Geoff Cameron','Berlin',100,5003);
insert into customer values(3003,'Jozy Altidor','Moscow',200,5007);
insert into customer values(3001,'Brad Guzan','London',NULL,5005);

create table orders(
	ord_no int(5)Not null Primary key,
    purch_amt float(5) Not null,
    ord_date date Not null,
    customer_id int(4)Not null,
    salesman_id int(5)Not null
);

insert into orders values(70001,150.5,'2012-10-05',3005,5002);
insert into orders values(70009,270.65,'2012-09-10',3001,5005);
insert into orders values(70002,65.26,'2012-10-05',3002,5001);
insert into orders values(70004,110.5,'2012-08-17',3009,5003);
insert into orders values(70007,948.5,'2012-09-10',3005,5002);
insert into orders values(70005,2400.6,'2012-07-27',3007,5001);
insert into orders values(70008,5760,'2012-09-10',3002,5001);
insert into orders values(70010,1983.43,'2012-10-10',3004,5006);
insert into orders values(70003,2480.4,'2012-10-10',3009,5003);
insert into orders values(70012,250.45,'2012-06-27',3008,5002);
insert into orders values(70011,75.29,'2012-08-17',3003,5007);
insert into orders values(70013,3045.6,'2012-04-25',3002,5001);

select c.cust_name,s.sname,s.city
from customer c inner join salesman s 
on c.city=s.city;

select c.cust_name,s.sname 
from customer c inner join salesman s 
on c.salesman_id=s.salesman_id;

select o.ord_no,c.cust_name,s.sname 
from customer c inner join salesman s
on customer.city<>salesman.city
right outer join orders o on ;