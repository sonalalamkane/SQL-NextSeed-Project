use  practice;
create table a1
(
	id int(3)primary key,
    aname varchar(10)
);
create table b1
(
	id int(3)primary key,
    age int(3)
);
insert into a1 values(1,'A');
insert into a1 values(2,'B');

insert into b1 values(11,111);
insert into b1 values(12,222);
insert into b1 values(13,333);

select * from b1;
select * from a1;

insert into a1 (id,aname) select id ,age from b1;
truncate a1;

create table c1(
	id int(3)primary key,
    aname varchar(10)
);

insert into c1 (id,aname) select id ,aname from a1;
insert into c1 (id,aname) select id ,age from b1;

select * from c1;

