create database ILS
use ILS 
CREATE TABLE employ
(
id int,
name varchar(100),
age int
)
select * from employ
alter table employ
add salary int 
truncate table employ

INSERT into employ (id,name,age,salary)
values(1,'arsalan',20,20000),
(2,'faheem',24,30000)
update employ 
set age =24
where id =1
delete employ
where id =1
select * from employ
order by id asc

INSERT into employ (id,name,age,salary)
values(3,'wasiq',22,3000)

create table employees
(
empid int primary key,
name varchar(50) not null,
salary int not null,
address varchar(50) default 'sgr',
age int check (age>18))
/*
ALTER table emloyees
set name =employees
where emloyees
*/
alter table  employees 
add salary int not null

select * from employees


insert into employees(empid,name,salary,address,age)
values
(1,'arsalan',3000000,'pampore',24),
(2,'wasiq',22200,'pampore',22),
(3,'ayan',19000,'sgr',29),
(4,'faheem',10000,'raazwoos',19),
(5,'athar',5000,'chanpora',20),
(6, 'Aamir', 30000, 'Srinagar', 25),
(7, 'Rahul', 35000, 'Jammu', 28),
(8, 'Zoya', 28000, 'Anantnag', 24),
(9, 'Aman', 45000, 'Delhi', 30),
(10, 'Sara', 32000, 'Srinagar', 26),
(11, 'Bilal', 40000, 'Baramulla', 29),
(12, 'Priya', 25000, 'Mumbai', 23),
(13, 'Adil', 50000, 'Pulwama', 32),
(14, 'Neha', 38000, 'Chandigarh', 27),
(15, 'Irfan', 42000, 'Srinagar', 31),
(16, 'Rohan', 22000, 'Jammu', 22),
(17, 'Ayesha', 31000, 'Anantnag', 25),
(18, 'Sameer', 60000, 'Delhi', 35),
(19, 'Pooja', 39000, 'Mumbai', 28),
(20, 'Danish', 33000, 'Srinagar', 26),
(21, 'Karan', 48000, 'Jammu', 33),
(22, 'Mehak', 27000, 'Baramulla', 24),
(23, 'Yasir', 41000, 'Pulwama', 29),
(24, 'Anjali', 36000, 'Delhi', 27),
(25, 'Farhan', 55000, 'Srinagar', 34)
update employees 
set salary = 3000000
where empid = 1
select * from employees
drop table employees

select max(salary) as max_salary from employees
select min(salary) as min_salary from employees
select avg(salary) as avg_salary from employees
select sum(salary) as sum_salary from employees
select count(*) as count from employees




select * from employees

select address,sum(salary) from employees
group by address
having sum(salary) > 50000

select address ,avg(salary) from employees
group by address
having avg(salary) >25000

select address,count(*) from employees
group by address
having count(*) > 3

select address,max(salary) from employees
group by address
order by max(salary) desc





USE ILS

CREATE TABLE product
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    brand VARCHAR(50),
    category VARCHAR(50),
    price INT CHECK (price > 0),
    stock INT DEFAULT 0,
    city VARCHAR(50)
)

INSERT INTO product
    (product_id, product_name, brand, category, price, stock, city)
VALUES
    (1, 'iPhone 16', 'Apple', 'Mobile', 75000, 12, 'Srinagar'),
    (2, 'Galaxy S25', 'Samsung', 'Mobile', 82000, 8, 'Jammu'),
    (3, 'OnePlus 13R', 'OnePlus', 'Mobile', 42000, 15, 'Pulwama'),
    (4, 'Redmi Note 14', 'Xiaomi', 'Mobile', 18000, 25, 'Srinagar'),
    (5, 'Realme GT 6', 'Realme', 'Mobile', 30000, 10, 'Anantnag'),
    (6, 'iPad Air', 'Apple', 'Tablet', 65000, 6, 'Jammu'),
    (7, 'Galaxy Tab S9', 'Samsung', 'Tablet', 55000, 9, 'Srinagar'),
    (8, 'AirPods Pro', 'Apple', 'Accessories', 25000, 20, 'Delhi'),
    (9, 'Galaxy Buds', 'Samsung', 'Accessories', 12000, 18, 'Pulwama'),
    (10, 'OnePlus Buds 3', 'OnePlus', 'Accessories', 5500, 30, 'Srinagar'),
    (11, 'Sony Headphones', 'Sony', 'Accessories', 18000, 7, 'Jammu'),
    (12, 'Dell Inspiron', 'Dell', 'Laptop', 60000, 5, 'Delhi'),
    (13, 'HP Pavilion', 'HP', 'Laptop', 58000, 4, 'Srinagar'),
    (14, 'MacBook Air', 'Apple', 'Laptop', 95000, 3, 'Jammu'),
    (15, 'Lenovo IdeaPad', 'Lenovo', 'Laptop', 45000, 11, 'Pulwama'),
    (16, 'Logitech Mouse', 'Logitech', 'Accessories', 1500, 40, 'Anantnag'),
    (17, 'Mechanical Keyboard', 'Redragon', 'Accessories', 3500, 22, 'Delhi'),
    (18, 'Samsung Monitor', 'Samsung', 'Monitor', 22000, 6, 'Srinagar'),
    (19, 'LG Monitor', 'LG', 'Monitor', 28000, 8, 'Jammu'),
    (20, 'Canon Printer', 'Canon', 'Printer', 14000, 5, 'Pulwama'),
    (21, 'Epson Printer', 'Epson', 'Printer', 17000, 7, 'Srinagar'),
    (22, 'Power Bank 20000mAh', 'Anker', 'Accessories', 4000, 16, 'Delhi'),
    (23, 'USB-C Charger', 'OnePlus', 'Accessories', 1800, 35, 'Anantnag'),
    (24, 'Smart TV 43 inch', 'Sony', 'Television', 38000, 4, 'Jammu'),
    (25, 'Smart TV 55 inch', 'Samsung', 'Television', 62000, 2, 'Srinagar')

SELECT * FROM product
select product_name from product
select product_name,price from product
select product_id,brand,category from product
select * from product
order by price 
select * from product
order by stock desc
select * from product
where product_id =10
select * from product
where price > 40000
select * from product
where price < 10000
select * from product
where stock = 5
select * from product
where brand ='apple'
select * from product
where category ='mobile'
select * from product
where city = 'srinagar'
select * from product
where price > 20000 and price <60000
select * from product 
where brand = 'samsung' and price >20000
select * from product 
where city = 'jammu' or city = 'delhi'
select * from product
where price > 50000 and stock > 20
select * from product
where product_name like 's%'
select * from product
where product_name like '%printer'
select * from product
where brand like 'o%'
select * from product
where category != 'accessories'
select * from product
where stock < 10 and price > 20000
select * from product
where brand = 'apple' and city = 'srinagar'
select * from product
where price between 15000 and 45000
select * from product
where product_name like '%monitor%'
select max(price) as max_price from product 
select min(price) as min_price from product 
select avg(price) from product
select sum(stock) from product
select count(*) from product
select max(stock) from product
select min(stock) from product
select count(*) from product
where price > 30000
select avg(price) from product
where brand ='apple'
select count(*) from product
where city = 'srinagar'
select max(price) from product
where brand = 'samsung'
select sum(stock) from product
where category = 'accessories'
select min(price) from product
where city = 'jammu'
select count(*) from product
where stock < 10
select max(price) as highest_price from product
insert into product(product_id, product_name, brand, 
category, price, stock, city)
values(26,'pixel 9','google','mobile',65000,10,'srinagar')
insert into product(product_id, product_name, brand, 
category, price, stock, city)
values(27,'jbl speaker','jbl','acessories',8000,12,'delhi')

INSERT INTO product
    (product_id, product_name, brand, category, price, city)
VALUES
    (28, 'Smart Watch', 'Noise', 'Wearable', 5000, 'Jammu');
select * from product
where product_id = 28
update product
set price=19000
where product_id =4
select * from product
update product 
set stock = 25
where product_id =10
update product
set city = 'jammu'
where product_id =20
update product 
set price = 1800
where product_id =16

delete from product
where product_id = 27

alter table product
add  warranty_years int
select * from product
/*
Display each brand and the number of products 
belonging to that brand.
*/
select brand,count(*) as no_of_brands from product
group by brand
order by no_of_brands desc

select * from product

select brand,count(*) as total_product from product
group by brand
having count(*) > 2


select * from product
select category ,count(*) as total_product 
from product
group by category
having count(*) >= 3
select brand,avg(price) as avg_price
from product
group by brand
having avg(price) > 30000

select category,max(price) as max_price
from product
group by category
having max(price) > 60000
select city,sum(stock) as total_stock 
from product
group by city
having sum(stock)>30
select brand,sum(stock) as total_stock 
from product
group by brand
having sum(stock)<20
order  by sum(stock) desc
select category, avg(price) as avg_price 
from product
group by category
having avg(price)< 20000
select city,count(*) as total_products
from product
group by city
having count(*) > 3
select brand,min(price) as min_price 
from product
group by brand
having min(price) > 10000
select category, sum(price) as total_price
from product
group by category
having sum(price) >100000
