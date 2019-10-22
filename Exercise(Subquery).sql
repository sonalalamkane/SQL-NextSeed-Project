SELECT * FROM Exercise.orders;
use Exercise;

/* Subqueries */
select s.salesman_id,s.sname,o.* from salesman s inner join 
orders o on s.salesman_id=o.salesman_id where o.salesman_id=
(select salesman_id from salesman where sname='Paul Adam');

select o.* from orders o inner join salesman s 
on o.salesman_id=s.salesman_id where o.salesman_id=
(select salesman_id from salesman where city='London');

select * from orders where salesman_id = 
(select salesman_id from orders where customer_id=3007);

select * from orders where purch_amt >
(select avg(purch_amt) from orders where ord_date ='2012-10-10');

select * from orders where salesman_id =   
(select salesman_id from salesman where city='New York');