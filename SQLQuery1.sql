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
email varchar(50) unique,
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


insert into employees(empid,name,email,salary,address,age)
values(1,'arsalan','arsalan@gmail.com',3000000,'pampore',24),
(2,'wasiq','wasiq@gmail.com',22200,'pampore',22),
(3,'ayan','ayan@gmail.com',19000,'sgr',29),
(4,'faheem','faheem@gmail.com',10000,'raazwoos',19),
(5,'athar','athar@gmail.com',5000,'chanpora',20)


update employees 
set salary = 3000000
where empid = 1
select * from employees

select max(salary) as max_salary from employees
select min(salary) as min_salary from employees
select avg(salary) as avg_salary from employees
select sum(salary) as sum_salary from employees
select count(*) as count from employees

select * from employees 
where salary > 11000
select * from employees
where email = 'arsalan@gmail.com'


select * from employees 
where address = 'sgr' and age > 18

select * from employees 
where salary >10000 or age > 22
select * from employees 
where name like 'a%'
select * from employees where name like '%q'