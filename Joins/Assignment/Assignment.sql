create database project;
use project;

create table salesman(
	salesman_id int(5)Not null Primary key,
    sname varchar(20) Not null,
    city varchar(15)Not null,
    commission float(5)
);

select * from salesman;

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

select * from customer;

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

select * from orders;

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

/*For Query number 21 to 25*/

create table company_mast(
	COM_ID int(5)Not null Primary key,
    COM_NAME varchar(20) Not null
);

select * from company_mast;

insert into company_mast values(11,'Samsung');
insert into company_mast values(12,'iBall');
insert into company_mast values(13,'Epsion');
insert into company_mast values(14,'Zebronics');
insert into company_mast values(15,'Asus');
insert into company_mast values(16,'Frontech');

create table item_mast(
	PRO_ID int(5)Not null Primary key,
    PRO_NAME varchar(20) Not null,
    PRO_PRICE int(5)Not null,
    PRO_COM int(4)Not null
);

select * from item_mast;

insert into item_mast values(101,'Mother Board',3200,15);
insert into item_mast values(102,'Key Board',450,16);
insert into item_mast values(103,'ZIP drive',250,14);
insert into item_mast values(104,'Speaker',550,16);
insert into item_mast values(105,'Monitor',5000,11);
insert into item_mast values(106,'DVD drive',900,12);
insert into item_mast values(107,'CD drive',800,12);
insert into item_mast values(108,'Printer',2600,13);
insert into item_mast values(109,'Refill cartridge',350,13);
insert into item_mast values(110,'Mouse',250,12);

/*For query number 26-29*/
create table emp_department(
	DPT_CODE int(5)Not null Primary key,
    DPT_NAME varchar(20) Not null,
    DPT_ALLOTMENT int(10)Not null
);

select * from emp_department;

insert into emp_department values(57,'IT',65000);
insert into emp_department values(63,'Finance',15000);
insert into emp_department values(47,'HR',240000);
insert into emp_department values(27,'RD',55000);
insert into emp_department values(89,'QC',75000);

create table emp_details(
	EMP_IDNO int(6)Not null Primary key,
    EMP_FNAME varchar(10) Not null,
    EMP_LNAME varchar(10)Not null,
    EMP_DEPT int(4)Not null
);

select * from emp_details;

insert into emp_details values(127323,'Michale','Robbin',57);                  
insert into emp_details values(526689,'Carlos','Snares',63);                   
insert into emp_details values(843795,'Enric','Dosio',57);                    
insert into emp_details values(328717,'Jhon','Snares',63);                   
insert into emp_details values(444527,'Joseph','Dosni',47);                    
insert into emp_details values(659831,'Zanifer','Emily',47);                    
insert into emp_details values(847674,'Kuleswar','Sitaraman',57);                
insert into emp_details values(748681,'Henrey','Gabriel',47);                  
insert into emp_details values(555935,'Alex','Manuel',57);                   
insert into emp_details values(539569,'George','Mardy',27);                    
insert into emp_details values(733843,'Mario','Saule',27);                    
insert into emp_details values(631548,'Alan','Snappy',27);                   
insert into emp_details values(839139,'Maria','Foster',57);                  