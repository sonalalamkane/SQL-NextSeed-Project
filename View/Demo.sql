create database practice;
use practice;

create table emp(
	id int(3)Not null primary key,
    ename varchar(15)not null,
    dname varchar(15)
);

insert into emp values(1,'A','HR');
insert into emp values(2,'B','HR');
insert into emp values(3,'C','Sales');
insert into emp values(4,'D','HR');
insert into emp values(5,'E','Sales');
insert into emp values(6,'F','Sales');
insert into emp values(7,'G','HR');

select * from emp;


/*select 
row_number() Over (order by ename) row_num,ename 
from emp 
ORDER BY ename;
*/

/*select 
rank() Over (order by ename) row_num,ename 
from emp 
ORDER BY ename;
*/

/*select 
dense_rank() Over (order by ename) row_num,ename 
from emp 
ORDER BY ename;
*/

create view myview as
select id,ename from emp
where ename is not null
with check option;

insert into myview values(80,'sonal');

select * from myview;

create table dept(
	id int(3)Not null primary key,
    empcount int(5)not null,
    deptname varchar(15)
);

insert into dept values(100,50,'HR');
insert into dept values(200,5,'Sales');
insert into dept values(300,11,'HR');
insert into dept values(400,43,'HR');
insert into dept values(500,77,'Sales');
insert into dept values(600,99,'Sales');
insert into dept values(700,6,'HR');
insert into dept values(1,6,'HR');
insert into dept values(2,6,'HR');
insert into dept values(3,6,'HR');
insert into dept values(4,6,'HR');
insert into dept values(5,6,'HR');
insert into dept values(6,6,'HR');

select * from dept;

create view v1 as
select e.id as empId,e.ename, d.empcount,d.deptname
from emp e inner join dept d on e.id=d.id;
select * from v1;

insert into v1(empId,ename) values(100,'XYZ');
insert into v1(empcount,deptname) values(20,'A');

delete from myview where id=1;

delete from v1 where empId=2;

update myview set ename='Sonal' where id=2;
update v1 set deptname='xxxxx' where empId=2;






