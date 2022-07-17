create database customer_sale;
use customer_sale;
create table customer(cust_id int,cust_name varchar(20),primary key(cust_id));
create table item(item_id int,item_name varchar(20),price int,primary key(item_id));
create table sale(bill_no int,bill_date date,cust_id int,item_id int,qty_sold int,
foreign key(cust_id)references customer(cust_id) on delete cascade,
foreign key(item_id)references item(item_id) on delete cascade);

drop table sale;

insert into customer values(1,'abhi');
insert into customer values(2,'akhil');
insert into customer values(3,'amal');
insert into customer values(4,'binu');
insert into customer values(5,'nimal');

select * from customer;

insert into item values(101,'soap',20);
insert into item values(102,'diary milk silk',350);
insert into item values(103,'oats',100);
insert into item values(104,'water melon',500);
insert into item values(105,'chocolate cake',600);

select * from item;

insert into sale values(101,'2022-06-14',1,101,1);
insert into sale values(101,'2022-06-14',1,102,1);
insert into sale values(101,'2022-06-14',1,103,1);
insert into sale values(102,'2022-06-14',2,101,1);
insert into sale values(102,'2022-06-14',2,102,1);
insert into sale values(102,'2022-06-14',2,103,1);
insert into sale values(103,'2022-06-13',5,101,1);
insert into sale values(103,'2022-06-13',5,102,2);
insert into sale values(103,'2022-06-13',5,105,1);
drop table sale;
select * from sale;

select item_id,cust_name,bill_date from customer natural join  sale natural join item where customer.cust_id=sale.cust_id AND item.item_id=sale.item_id AND bill_date='2022-06-14';

select cust_id,cust_name,sum(qty_sold) as total_quantity ,sum(price) as total_price,sum(qty_sold)*sum(price) as Bill from customer natural join  sale natural join item where customer.cust_id=sale.cust_id AND item.item_id=sale.item_id group by cust_id;

select cust_id,item_name,price from customer natural join  sale natural join item where customer.cust_id=sale.cust_id AND item.item_id=sale.item_id AND price>200;

select cust_name,count(item_id) from customer natural join  sale natural join item where customer.cust_id=sale.cust_id AND item.item_id=sale.item_id group by cust_name having count(item_id)>1;

select cust_id,cust_name,item_name from customer natural join  sale natural join item where customer.cust_id=sale.cust_id AND item.item_id=sale.item_id AND cust_id=5;
