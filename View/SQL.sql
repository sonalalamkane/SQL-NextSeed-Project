create database company;

use company;

create table emp(
	eid int(4)primary key,
    ename varchar(10),
    deptid int(4)
);

insert into emp values(1,'A',11);
insert into emp values(2,'B',12);

create table dept(
	deptid int(4)primary key,
    deptname varchar(10)
);

insert into dept values(11,'HR');
insert into dept values(12,'Sales');

select * from emp;
select * from dept;

