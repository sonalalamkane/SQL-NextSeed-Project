use company;

create table totalProduction(
	pid int(3)primary key,
    pname varchar(15),
    unitPrice int(4),
    Quantity int(3)
);

insert into totalProduction values(1,'laptop',100,90);
insert into totalProduction values(2,'desktop',200,50);

truncate totalProduction;

select * from totalProduction;
select * from TotalProductSales;

call OrderTable;
call request_product(1,10);

/*
First Procedure
CREATE DEFINER=`root`@`localhost` PROCEDURE `orderTable`()
BEGIN
	create table TotalProductSales
	(
		salesid int(4)primary key auto_increment,
		product int(4),
		salequantity int(4),
		total int(6)
	);
END
*/

/*
Second Procedure
CREATE PROCEDURE `request_product` (product int,qty int)
BEGIN
	declare tqunatity int(5);
    declare price int(5);
    
	set tqunatity = select Qunatity from totalProduction;
    set price = select unitPrice from totalProduction where pid = product;
    
	if tqunatity<>0
	then 
		update totalProduction set Qunatity=Qunatity-qty;
	else
		select 'No Qunatity Available....';
	end if
    
	insert into TotalProductSales values(product,qty,qty*price);
	select * from TotalProductSales;
END
*/

create table current_year_production(
	fid int(3) primary key,
    area int(7) not null,
    fname varchar(20) not null,
    numOfTrees int(5)not null,
    productivity int(5)
);

insert into current_year_production values(100,10000,'A',240,4400);
insert into current_year_production values(101,15000,'B',300,6200);
insert into current_year_production values(102,20000,'C',580,9300);

create table history(
	fid int(3),
    fyear int(7) not null,
    productivity int(5)not null,
    price int(4)
);

insert into history values(100,2017,4100,1200);
insert into history values(101,2017,5800,1200);
insert into history values(102,2017,9400,1200);
insert into history values(100,2016,3900,1300);

select * from current_year_production;
select * from history;

select fname from current_year_production c inner join history h on c.fid=h.fid 
where h.fyear=2017 and c.productivity > h.productivity;

select fname from current_year_production c inner join history h on c.fid=h.fid 
where (c.productivity/c.area) > (h.productivity/c.area) and h.fyear =2017;
