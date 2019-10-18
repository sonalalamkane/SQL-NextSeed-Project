use project;

/*1*/
select s.sname,c.cust_name,s.city as salesman_city,c.city as customer_city 
from salesman s inner join customer c 
on s.city=c.city;

/*2*/
select o.ord_no,o.purch_amt,c.cust_name,c.city
from orders o inner join customer c 
on o.customer_id=c.customer_id 
and o.purch_amt between 500 and 2000;

/*3*/
select c.cust_name as customer_name,s.sname as salesman_name 
from customer c inner join salesman s 
on c.salesman_id=s.salesman_id;

/*4*/
select c.cust_name,s.sname 
from customer c inner join salesman s 
on c.salesman_id=s.salesman_id 
and s.commission > 0.12;

/*5*/
select c.cust_name,s.sname,s.commission
from customer c inner join salesman s on c.salesman_id=s.salesman_id 
where c.city<>s.city
and s.commission > 0.12;

/*6*/
select o.ord_no,o.ord_date,o.purch_amt,c.cust_name,s.sname
from orders o inner join customer c on o.customer_id=c.customer_id
inner join salesman s on c.salesman_id=s.salesman_id;

/*7*/


/*8*/
select c.* 
from customer c left outer join salesman s 
on c.salesman_id=s.salesman_id 
order by c.customer_id asc;

/*9*/
select c.* 
from customer c left outer join salesman s 
on c.salesman_id=s.salesman_id 
where c.grade < 300
order by c.customer_id asc;

/*10*/
select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt 
from customer c left outer join orders o 
on c.customer_id=o.customer_id order by o.ord_date;

/*11*/
select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt as amount,s.sname,s.commission
from customer c Left outer join orders o on c.customer_id=o.customer_id
left outer join salesman s on o.salesman_id=s.salesman_id;

/*12*/
select c.* 
from customer c right outer join salesman s 
on c.salesman_id=s.salesman_id
order by c.salesman_id;

/*13*/
select c.cust_name,s.sname 
from salesman s left outer join customer c 
on s.salesman_id=c.salesman_id
left outer join orders o on c.customer_id=o.customer_id;

/*14*/
select s.sname,c.cust_name,o.purch_amt 
from salesman s left outer join customer c 
on s.salesman_id=c.salesman_id
left outer join orders o 
on c.customer_id=o.customer_id
where o.purch_amt>2000 and c.grade is not null;

/*15*/
select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt
from customer c left outer join orders o 
on c.customer_id=o.customer_id;

/*16*/
select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt
from customer c left outer join orders o 
on c.customer_id=o.customer_id 
union
select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt
from customer c right outer join orders o 
on c.customer_id=o.customer_id 
where c.grade is not null;

/*17*/
select * 
from salesman cross join customer;

/*18*/
select * 
from salesman s cross join customer c 
where s.city is not null;

/*19*/
select * 
from salesman s cross join customer c 
where s.city is not null and c.grade is not null;

/*20*/
select * 
from salesman s cross join customer c 
where s.city <> c.city and c.grade is not null;

/*21*/
select i.*,c.COM_NAME 
from item_mast i left outer join company_mast c
on i.PRO_COM=c.COM_ID;

/*22*/
select i.PRO_NAME,i.PRO_PRICE,c.COM_NAME 
from item_mast i left outer join company_mast c
on i.PRO_COM=c.COM_ID;

/*23*/
select c.COM_NAME,avg(i.PRO_PRICE) as Average
from item_mast i inner join company_mast c
on i.PRO_COM=c.COM_ID group by c.COM_NAME;

/*24*/
select c.COM_NAME,avg(PRO_PRICE) as Average
from item_mast i inner join company_mast c
on i.PRO_COM=c.COM_ID 
group by c.COM_NAME 
having avg(PRO_PRICE) >= 350 ;

/*25*/
select c.COM_NAME,i.PRO_NAME,i.PRO_PRICE
from item_mast i inner join company_mast c
on i.PRO_COM=c.COM_ID
and i.PRO_PRICE=(select max(i.PRO_PRICE) 
from item_mast i where i.PRO_COM=c.COM_ID);

/*26*/
select emp_details.*,emp_department.DPT_NAME 
from emp_details inner join emp_department 
on emp_details.EMP_DEPT=emp_department.DPT_CODE;

/*27*/
select emp_details.EMP_FNAME,emp_details.EMP_LNAME,emp_department.DPT_ALLOTMENT
from emp_details inner join emp_department on emp_details.EMP_DEPT= emp_department.DPT_CODE;