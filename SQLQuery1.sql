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
values(3,'wasiq',22,3000),




