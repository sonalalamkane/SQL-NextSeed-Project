use practice;

create table a(
	id int(4)primary key,
    ename varchar(10),
    did int(4)
);

create table b(
	did int(4)primary key,
	dname varchar(10),
    sid int(4)
);

create table c(
	sid int(4)primary key,
    sname varchar(10)
);

insert into a values(1,'A',11);
insert into a values(2,'B',12);
insert into a values(3,'C',13);
insert into a values(4,'D',14);
insert into a values(5,'E',11);
insert into a values(6,'F',11);
insert into a values(7,'G',12);
insert into a values(8,'H',13);

insert into b values(11,'HR',1000);
insert into b values(12,'Sales',2000);
insert into b values(13,'Finance',1000);
insert into b values(14,'Marketing',2000);

insert into c values(1000,'xxxxxxx');
insert into c values(2000,'ddddddd');
insert into c values(3000,'ccccccc');

select * from a;
select * from b;
select * from c;

select a.id,a.ename,b.did,b.dname,c.sid,c.sname from a left outer join b 
on a.did=b.did right outer join c on b.sid=c.sid;

select a.id,a.ename,b.did,b.dname,c.sid,c.sname from a right outer join b 
on a.did=b.did right outer join c on b.sid=c.sid;

select a.id,a.ename,b.did,b.dname,c.sid,c.sname from a left outer join b 
on a.did=b.did left outer join c on b.sid=c.sid;

select a.id,a.ename,b.did,b.dname,c.sid,c.sname from a right outer join b 
on a.did=b.did left outer join c on b.sid=c.sid;

