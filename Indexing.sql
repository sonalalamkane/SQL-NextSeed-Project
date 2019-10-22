SELECT * FROM practice.identity;

use practice;
create index myindex on identity (nname asc);
explain select id,nname from identity where nname = 'B';

create table sonal (
	id int(2)primary key,
    nname varchar(10),
    address varchar(10)
);

insert into sonal values(10,'Z','pune');
insert into sonal values(5,'X','nahsik');

select * from sonal;

SHOW INDEX FROM s;
create index myindex on sonal(nname desc);

create table s(
	id int(2)not null,
    constraint pk primary key NONCLUSTERED (id)
);