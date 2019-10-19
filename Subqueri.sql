use practice;

select * from sal;

insert into sal values(7,'Sonal',111);
insert into sal values(8,'Ankush',202);
insert into sal values(9,'Lamkane',181);
insert into sal values(10,'Suman',117);
insert into sal values(11,'Swapnil',711);
insert into sal values(12,'aass',222);
insert into sal values(13,'saaass',244);
insert into sal values(16,'Mr.. f',244);
insert into sal values(15,'Mr f',244);
insert into sal values(15,'Ms.',144);


select max(salary),ename from sal where salary < (select max(salary) from sal group by salary) group by salary;

SELECT MAX(salary) FROM sal WHERE Salary NOT IN (SELECT Max(Salary) FROM sal);
SELECT MAX(salary) FROM sal WHERE Salary < ( SELECT Max(Salary) FROM sal);

select * from sal order by salary desc;

select ename from sal where ename REGEXP '^S';    /* start with S */
select ename from sal where ename REGEXP 'l$';    /* end with l */
select salary from sal where salary REGEXP '[0-9]';     /* Between 0-9 */
select ename from sal where ename REGEXP 'sw|so';       /* operates like sw or sa */
select ename from sal where ename REGEXP '[xsz]';      /* match character either x,s,z*/
select ename from sal where ename REGEXP '[^abc]'; 
select ename from sal where ename REGEXP 's+'; 
select ename from sal where ename REGEXP 'a*'; 
select ename from sal where ename REGEXP '.o'; 
select ename from sal where ename REGEXP '^.{5}';  /* minimum the length should be 5 */
select ename from sal where ename REGEXP '^.{2,5}';  /* the length of string is minimum is 2 and max is 5 */ 
select ename from sal where ename REGEXP 'M(r|s)\.?'; 
select salary from sal where salary REGEXP '\d\d\d'; 
select ename from sal where ename REGEXP BINARY '^S';    /* start with only capital S */
select ename from sal where ename REGEXP '[l-z]';    
select ename from sal where ename REGEXP '^[^sa]';
select ename from sal where ename REGEXP ' ';         /* Display the word which conatin the space*/
select ename from sal where ename REGEXP 's+'; 
select ename from sal where ename REGEXP 's*'; 

create table web(
	web_name varchar(20)
);

drop table web;

insert into web values('www.abc.com');
insert into web values('www.abc.co.in');

select * from web;

select REGEXP_SUBSTR(web_name,'...[\.][a-zA-Z0-9]+[\.]') as name from web;

select substring(web_name,LOCATE('...[\.][a-zA-z0-9]+[\.]',web_name)) as wname from web;






