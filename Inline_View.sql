select * from dept;
select * from emp;

(select * from (select deptid,ename from emp)emp 
inner join dept on emp.deptid=dept.deptid;

insert into dept(deptid,deptname) (select deptid,ename from emp where deptid=3);

select * from emp where deptid=(select deptid from dept where deptname like 'HR');