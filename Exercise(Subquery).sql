SELECT * FROM Exercise.orders;
select * from salesman;
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

select commission from salesman where salesman_id in
(select salesman_id from salesman where city='Paris');

select * from customer where customer_id = 
(select salesman_id-2001 from salesman where sname='Mc Lyon');

select count(customer_id),grade from customer 
group by grade having grade >
(select avg(grade) from customer where city='New York');

select c.cust_name,o.ord_no from customer c inner join orders o 
on c.customer_id =o.customer_id
and o.ord_date = '2012-08-17';  

select * from customer where not grade = any
(select grade from customer where city='Dallas'); 

select sname from salesman s where 1<
(select count(*) from customer 
where salesman_id = s.salesman_id);

