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



use ILS
create table books
(
book_id  int primary key,
book_title varchar(50),
author varchar(100),
category varchar(50),
price int ,
published_year int
)

create table borrowings
(
borrowing_id int primary key,
borrower_name varchar(50),
book_id int foreign key references books(book_id),
borrow_date datetime,
return_date datetime,
fine_amount decimal(10,2)
)

select * from books
select * from borrowings

INSERT INTO books
(book_id, book_title, author, category, price, published_year)
VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 350, 1988),
(2, 'Atomic Habits', 'James Clear', 'Self-Help', 550, 2018),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 400, 1997),
(4, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 300, 1999),
(5, '1984', 'George Orwell', 'Dystopian', 450, 1949),
(6, 'The Psychology of Money', 'Morgan Housel', 'Finance', 500, 2020),
(7, 'Ikigai', 'Hector Garcia', 'Self-Help', 320, 2016),
(8, 'Harry Potter', 'J.K. Rowling', 'Fantasy', 650, 1997),
(9, 'Think and Grow Rich', 'Napoleon Hill', 'Self-Help', 280, 1937),
(10, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 480, 1937),
(11, 'Sapiens', 'Yuval Noah Harari', 'History', 700, 2011),
(12, 'Deep Work', 'Cal Newport', 'Productivity', 420, 2016),
(13, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 250, 1925),
(14, 'Clean Code', 'Robert C. Martin', 'Technology', 800, 2008),
(15, 'The Power of Habit', 'Charles Duhigg', 'Psychology', 390, 2012);



INSERT INTO borrowings
(borrowing_id, borrower_name, book_id, borrow_date, return_date, fine_amount)
VALUES
(1, 'Aarav', 1, '2026-01-05', '2026-01-12', 0),
(2, 'Priya', 2, '2026-01-06', '2026-01-20', 50),
(3, 'Rahul', 3, '2026-01-07', '2026-01-14', 0),
(4, 'Aarav', 4, '2026-01-08', '2026-01-18', 20),
(5, 'Sneha', 5, '2026-01-09', '2026-01-16', 0),
(6, 'Vikram', 6, '2026-01-10', '2026-01-25', 100),
(7, 'Priya', 7, '2026-01-11', '2026-01-18', 0),
(8, 'Aman', 8, '2026-01-12', '2026-01-22', 30),
(9, 'Rahul', 9, '2026-01-13', '2026-01-20', 0),
(10, 'Sneha', 10, '2026-01-14', '2026-01-21', 0),
(11, 'Aarav', 2, '2026-01-15', '2026-01-29', 40),
(12, 'Neha', 3, '2026-01-16', '2026-01-23', 0),
(13, 'Vikram', 4, '2026-01-17', '2026-02-01', 75),
(14, 'Aman', 6, '2026-01-18', '2026-01-25', 0),
(15, 'Priya', 8, '2026-01-19', '2026-02-02', 60),
(16, 'Rahul', 1, '2026-01-20', '2026-01-27', 0),
(17, 'Neha', 11, '2026-01-21', '2026-02-05', 100),
(18, 'Sneha', 12, '2026-01-22', '2026-01-29', 0),
(19, 'Aarav', 13, '2026-01-23', '2026-01-30', 0),
(20, 'Vikram', 14, '2026-01-24', '2026-02-10', 150),
(21, 'Aman', 3, '2026-02-01', '2026-02-08', 0),
(22, 'Priya', 6, '2026-02-02', '2026-02-16', 80),
(23, 'Rahul', 7, '2026-02-03', '2026-02-10', 0),
(24, 'Neha', 8, '2026-02-04', '2026-02-18', 50),
(25, 'Sneha', 2, '2026-02-05', '2026-02-12', 0),
(26, 'Aarav', 10, '2026-02-06', '2026-02-20', 90),
(27, 'Vikram', 11, '2026-02-07', '2026-02-14', 0),
(28, 'Aman', 12, '2026-02-08', '2026-02-22', 70),
(29, 'Priya', 1, '2026-02-09', '2026-02-16', 0),
(30, 'Rahul', 4, '2026-02-10', '2026-02-25', 120),
(31, 'Neha', 5, '2026-02-11', '2026-02-18', 0),
(32, 'Sneha', 6, '2026-02-12', '2026-02-19', 0),
(33, 'Aarav', 8, '2026-02-13', '2026-02-27', 100),
(34, 'Vikram', 9, '2026-02-14', '2026-02-21', 0),
(35, 'Aman', 14, '2026-02-15', '2026-03-01', 200),
(36, 'Priya', 3, '2026-02-16', '2026-02-23', 0),
(37, 'Rahul', 12, '2026-02-17', '2026-03-03', 110),
(38, 'Neha', 2, '2026-02-18', '2026-02-25', 0),
(39, 'Sneha', 10, '2026-02-19', '2026-03-05', 140),
(40, 'Aman', 11, '2026-02-20', NULL, 0);



select book_title from books 
where price >(select avg(price) from books)

select book_title from books 
where price <(select avg(price) from books)

select book_title from books 
where price =(
select max(price) from books
)

select book_title from books 
where price =(
select min(price) from books
)

select borrower_name,fine_amount from borrowings 
where fine_amount >(
select avg(fine_amount) from borrowings
)

select borrower_name,fine_amount from borrowings 
where fine_amount <(
select avg(fine_amount) from borrowings
)

select * from books

select book_title,price from books 
where price >(
select price from books
where book_title ='The Alchemist')

select book_title,price from books 
where price <(
select price from books
where book_title ='Atomic Habits')

select * from books

select book_title,published_year from books
where published_year >(
select avg(published_year) from books
)

select borrower_name from borrowings
where fine_amount = (
select max(fine_amount) from borrowings
)
select * from borrowings

select book_title from books
where book_id in
(select book_id from borrowings
where borrower_name = 'Aarav')

select * from books
where book_id  in
(
select book_id from borrowings
where borrower_name = 'Aarav'
)

select * from books
where book_id  in
(
select book_id from borrowings
where borrower_name = 'Priya'
)

select * from books
select * from borrowings

select borrower_name from borrowings 
where book_id in
(
select book_id from books
where category ='Finance'
)

select borrower_name from borrowings 
where book_id in
(
select book_id from books
where category ='Fantasy'
)

select book_title from books
where book_id in
(
select book_id from borrowings
where borrow_date >= '2026-02-01 00:00:00.000'
)


select book_title from books
where price =
(
select max(price) from books
where category = 'Finance'
)

select book_title from books
where price =
(
select min(price) from books
where category = 'Finance'
)

select  * from borrowings
where book_id in
(
select book_id from books
where price > 500
)

select book_title from books
where book_id in
(
select book_id from borrowings
where fine_amount > 100
)
/*
select book_title,
(select fine_amount from borrowings
where borrowings.book_id = books.book_id) from books
where book_id in
(
select book_id from borrowings
where fine_amount > 100
)
*/
select * from books
where category = 'self-help ' and price > 
(
select avg(price) from books
where category = 'self-help '
)

select * from books
where category = 'finance' and price <
(
select avg(price) from books
where category = 'Fiction'
)

select * from borrowings 
where fine_amount > 
(
select max(fine_amount) from borrowings
where book_id = 1
)

select book_title from books 
where price >
(
select avg(price) from books 
where published_year < 2000
)

select borrower_name from borrowings 
where fine_amount > 
(
select avg(fine_amount) from borrowings 
where borrow_date >= '2026-01-01' and borrow_date < '2026-02-01'
)
select * from borrowings


select * from books
where price =
(
select max(price) from books
where book_id  in
(
select book_id from borrowings
where borrower_name = 'priya'
)
)

select * from books
where price =
(
select min(price) from books
where book_id  in
(
select book_id from borrowings
where borrower_name = 'rahul'
)
)




select * from borrowings
where book_id in
(
select book_id from books 
where price > 
(
select avg(price) from books
)
)

select book_title from books
where price > 
(
select avg(price) from books
where category =
(
select category from books
where book_title = 'the alchemist' 
)
)

select * from borrowings 
where fine_amount = 
(
select max(fine_amount) from borrowings
where book_id in
(
select book_id from books 
where price > 400
)
)


select * from books b
where price =
(
select max(price) from books
where category = b.category
)

select * from books b
where price =
(
select min(price) from books
where category = b.category
)

select * from books b
where price > (
select avg(price) from books
where category = b.category
)

Find borrowing records whose fine is greater
than the average fine for the same book.

select * from borrowings b
where fine_amount > (
select avg(fine_amount)  from borrowings
where book_id=b.book_id
)

select * from borrowings b
where fine_amount =
(
select max(fine_amount) from borrowings
where book_id = b.book_id
)
--Find books whose price is greater than the
--average price of books published in the same year.
select * from books b
where price >
(
select avg(price) from books
where published_year = b.published_year
)
select * from books
select * from borrowings
--Find books whose price is
equal to the maximum price in their own category.
select * from books b
where price =
(
select max(price) from books 
where category = b.category
)





CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);

INSERT INTO Customers
    (customer_id, customer_name, city, age)
VALUES
(1, 'Arjun',  'Srinagar', 25),
(2, 'Priya',  'Delhi',    30),
(3, 'Rahul',  'Mumbai',   22),
(4, 'Neha',   'Srinagar', 28),
(5, 'Aman',   'Delhi',    35),
(6, 'Zoya',   'Jammu',    24),
(7, 'Kabir',  'Mumbai',   31),
(8, 'Isha',   'Jammu',    27),
(9, 'Sameer', 'Delhi',    29),
(10,'Mehak',  'Srinagar', 21);

INSERT INTO Orders
    (order_id, customer_id, order_date, amount, status)
VALUES
(101, 1, '2026-01-05', 1500, 'Completed'),
(102, 1, '2026-02-10', 3200, 'Completed'),
(103, 2, '2026-01-12', 4500, 'Pending'),
(104, 2, '2026-03-15', 1200, 'Completed'),
(105, 3, '2026-02-20', 2800, 'Cancelled'),
(106, 3, '2026-04-02', 5100, 'Completed'),
(107, 4, '2026-01-25', 1800, 'Completed'),
(108, 4, '2026-03-05', 6200, 'Pending'),
(109, 5, '2026-02-14', 7500, 'Completed'),
(110, 5, '2026-04-10', 2300, 'Completed'),
(111, 6, '2026-03-18', 900,  'Cancelled'),
(112, 7, '2026-01-30', 4100, 'Completed'),
(113, 7, '2026-04-15', 6800, 'Pending'),
(114, 8, '2026-02-28', 1600, 'Completed'),
(115, 9, '2026-03-22', 5400, 'Completed'),
(116, 9, '2026-04-20', 3500, 'Pending');
select * from customers
select * from orders

--Find customers whose individual order amount is greater
--than the average amount of all orders. Display customer name, order ID, and amount.

select customer_name,order_id,amount from orders o join customers c
on o.customer_id = c.customer_id
where amount >
(
select avg(amount) from  orders o
)

--Find the order or orders with the second-highest distinct order amount, without using TOP or OFFSET.

select * from orders
where amount =(
select max(amount) from orders 
where amount <(
select max(amount) from orders
)
)

--Find customers whose age is greater than the average age of all customers.

select * from customers
where  age >(
select avg(age) from customers 
)

--Find orders whose amount is greater than at least one order placed
--by a customer from Delhi. Use ANY or an equivalent approach.
select * from Customers
select * from orders
/*
select order_id,city from orders o join customers c
on o.customer_id = c.customer_id
where order_id > 1(
select c.customer_id from customers c
where c.city ='delhi'
)
*/

--Q3. Find customers whose age equals the average age of customers from their city.
select * from customers c
where age =
(
select avg(age) from customers
where city =c.city
)

--Find orders whose amount is greater than the average amount of all orders.
select * from orders 
where amount >
(
select avg(amount) from orders 
)
--Find customers who have not placed any orders using NOT IN.
select * from customers
where customer_id not in
(
select customer_id from orders 
)
--Find orders whose amount equals the average order amount, if any such orders exist.
select * from orders 
where amount =
(
select avg(amount) from orders
)
--Find customers whose total order amount is greater than the average total order amount 
--per customer, counting customers with no orders as zero.
/*
select customer_name,order_id from customers c left join orders o
on o.customer_id = c.customer_id
select * from orders
where sum(amount) >
(
select avg(amount) from orders
group by customer_id
)
*/

--Find order amounts that occur more than once and display all matching orders.
select * from orders
where amount in
(
select amount from orders
group by amount
having count(*) > 1
)
--Find customers whose age is greater than the average age of customers who have placed orders.

select * from customers
where age >
(
select avg(age) from customers
where customer_id in 
(
select customer_id from orders
)
)
--Find customers whose earliest order date is earlier than the earliest order date of customer ID 2.
select * from orders 
where order_date < (
select min(order_date) from orders 
where customer_id =2
)


