use practice;

create table demo(
	nname varchar(10),
    ddate date
);

insert into demo values('   sonal','2017/02/02');
insert into demo values('lamkane    ','2018/02/02');
insert into demo values('   suman    ','2019/11/11');
insert into demo values('ANKUSH','2063/01/05');
insert into demo values('Swapnil','2015/08/11');

select * from demo;

select left(nname,3) from demo;
select right(nname,3) from demo;
select lower(nname) from demo;
select upper(nname) from demo;
select ltrim(nname) from demo;
select rtrim(nname) from demo;
select trim(nname) from demo;
select replace(nname,'a','w') from demo;
select reverse(nname) from demo;
select stuff(nname,1,3'xyz') from demo;
select substring(nname,2,4) from demo;
select floor(25.36);
select ceil(25.51);
select round(25.123,2);
select datediff('2020/06/06','2019/05/06') from demo;
select curdate() as res;
select cast(150.10 as char);
select cast("14:06:10" as time);
select coalesce(null,null,null,nname) from demo;
select isnull(nname) from demo;

create table sal(
	eid int(3),
    ename varchar(10),
    salary int(5)
);

insert into sal values(1,'Sonal',200);
insert into sal values(2,'A',100);
insert into sal values(3,'B',101);
insert into sal values(4,'C',200);
insert into sal values(5,'S',201);
insert into sal values(5,'X',202);

select * from sal
where 200>any(select salary from sal);

select * from sal
where 200>all(select salary from sal);

select * from sal
where exist(select * from sal where eid=1);

CREATE TEMPORARY TABLE temp1 SELECT * FROM sal;

select * from temp1;

create table identity(
	id int(3) auto_increment,
    nname varchar(10),
    primary key(id)
);

insert into identity values(null,'A');

select * from identity;

insert into identity values(100,'B');
insert into identity values(null,'B');

truncate identity;
insert into identity values(null,'cat');
insert into identity values(null,'bat');
insert into identity values(null,'mat');

select convert_tz('2019-10-17 12:00:00','+08:00','+10:00');
select date_format('2019-10-17','%a');
select extract(month from '2019-10-17');
select from_unixtime(1500001);