use Exercise;

select * from salesman;
select count(distinct salesman_id) 
from orders; 

select * from salesman where salesman_id 
between 5001 and 5005;

select * from salesman where salesman_id 
in (5001,5005,5003);

call demo;
call hello;
call find(@salesman_id);

call powernum(3,3);
call addnum(2,2);
call c();


/*Cursor*/
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `c`()
BEGIN
    declare eid int(5);
    declare ename varchar(10);
    declare finish int default 0;
    declare c1 cursor for select salesman_id,sname from salesman;
    declare continue handler for not found set finish=1;
    open c1;
    get_sal:LOOP
		fetch c1 into eid,ename;
        if finish=1 then
			leave get_sal;
		end if;
        select concat(eid,concat('=',ename));
	end LOOP get_sal;
    close c1;
END
*/
