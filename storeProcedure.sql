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


