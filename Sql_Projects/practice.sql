create database projects
use projects
select * from customers
select * from orders
select * from products

--Q1.Display each order with the customer's ID, city and order date.
select c.customer_id ,c.city,o.order_date from orders o join customers c
on c.customer_id = o.customer_id

--Q2.Display each order with its product name, category and quantity.
select p.product_name,p.category,o.quantity from orders o join products p
on p.product_id = o.product_id

--Q3.Show order ID, customer city, product name and product price for every matching order.
select o.order_id,c.city,p.product_name,p.price from orders o join customers c
on o.customer_id =c.customer_id
inner join products as p
on p.product_id =o.product_id

--Q4.Find orders placed by customers from London.
select o.*,c.city from orders o  join customers c
on c.customer_id = o.customer_id
where c.city = 'london'

--Q5.Display orders paid for using Card, along with customer city and product name.
select o.*,c.city,p.product_name from customers c join orders o
on c.customer_id = o.customer_id
inner join products as p
on p.product_id = o.product_id
where payment_method = 'card'

--Q6.Find orders where the ordered product belongs to the Beauty category.

select o.*,p.category from products p join orders o
on o.product_id = p.product_id
where category ='beauty'

--Q7.Display each customer's ID and the products they ordered, sorted by customer ID.
select c.customer_id , p.product_name from orders o join products p
on p.product_id = o.product_id
inner join customers c
on c.customer_id = o.customer_id
order by customer_id desc

--Q8.Find orders where the quantity is greater than 2 and show the product name and price.
select o.*,p.product_name,p.price from orders o join products p
on o.product_id = p.product_id
where quantity > 2

--Q9.Display orders placed by loyalty members, including their product names.
select o.order_id,c.loyalty_member,p.product_name from orders o join customers c
on c.customer_id = o.customer_id
inner join products p
on p.product_id = o.product_id
where loyalty_member = 1

--Q10.Display the order ID, product name and calculated line value for each order.
select o.order_id ,p.product_name,ROUND(p.price * o.quantity,2)as  calculated_value from orders o join products p
on p.product_id = o.product_id


--LEFT JOIN 

--Q11.List all customers, including those who have never placed an order.
select c.*,o.order_id from customers c left join orders o
on c.customer_id = o.customer_id

--Q12.Find only customers who have never placed an order.
select c.*,o.order_id from customers c left join orders o
on c.customer_id = o.customer_id
where o.order_id = 'Null'

--Q13.List every product, including products that have never been ordered.
select p.product_name, o.order_id from products p left join orders o
on o.product_id = p.product_id

--Q14.Find products that have never appeared in an order.
select p.product_name,p.product_id from products p left join orders o
on p.product_id =o.product_id
where o.order_id = 'Null'

--Q15. Show every customer and the number of orders they placed, including zero-order customers.
select c.customer_id,count(o.order_id) as no_of_orders from customers c left join orders o
on o.customer_id = c.customer_id
group by c.customer_id

--Q16.Show all products with the total quantity ordered, including products with no orders.
select p.product_id,count(o.quantity) as ordered_quantity from products p left join orders o
on p.product_id = o.product_id
group by p.product_id

--Q17.List all customers and any orders they placed in 2024. Keep customers with no orders in 2024.
select c.customer_id,o.order_id,o.order_date from customers c left join orders o
on c.customer_id = o.customer_id
where order_date between '2024-01-01' and '2024-12-30'
select c.customer_id,o.order_id,o.order_date from customers c left join orders o
on c.customer_id = o.customer_id
and o.order_date >= '20240101'
and o.order_date < '20250101'

--Q18.Show every customer and their order payment methods, including customers without orders.
select c.*,o.payment_method from customers c left join orders o
on c.customer_id = o.customer_id

--Q19.List all products and their categories, alongside any matching order IDs.
select p.product_id,p.product_name,p.category,o.order_id from products p left join orders o
on p.product_id = o.product_id

--Q20.Show all customers and their orders, but display only orders with 
--quantity at least 3 while keeping customers with no qualifying orders.
select c.customer_id,o.order_id,o.quantity from customers c left join orders o
on c.customer_id =o.customer_id
and o.quantity >= 3


--RIGHT JOIN and FULL OUTER JOIN

--Q21.Use RIGHT JOIN to list every customer and their matching orders, 
--including customers without orders.

select o.order_id,c.customer_id from orders o right join customers c
on o.customer_id = o.customer_id


--Q22.Use RIGHT JOIN to list all products and any orders that reference them.
select o.order_id,p.product_id from orders o right join products p
on o.product_id = p.product_id
order by product_id desc

--Q23.Use FULL OUTER JOIN to show all customers and matching orders,
--including unmatched rows from either side.
select o.order_id,c.customer_id from customers c full outer join orders o
on o.customer_id = c.customer_id

--Q24.Use FULL OUTER JOIN to compare all product IDs in products with product IDs referenced by orders.
select p.product_id,o.product_id from orders o full outer join products p
on p.product_id = o.product_id
where o.product_id is null

--Q25.Display every customer and product combination that is linked by an order, 
--while preserving unmatched customers and products.
select c.customer_id,p.product_id,o.order_id from customers c full outer join orders o
on c.customer_id = o.customer_id
full outer join products p
on p.product_id = o.product_id

--Q26.Use FULL OUTER JOIN to identify unmatched customer IDs between customers and orders.
select c.customer_id,o.customer_id from customers c full outer join orders o
on c.customer_id = o.customer_id
WHERE o.customer_id is null

--Q27.Show every product and any matching order data, including products 
--that have no matching order. Use RIGHT JOIN.
select p.product_id,o.order_id from orders o right join products p
on p.product_id = o.product_id
where o.order_id is null

--Q28.Explain through a query which customers have orders and which do not,
--using FULL OUTER JOIN and a status label.

select c.customer_id, o.order_id, case
when o.order_id is null then 'no orders'
else 'has orders' end as order_status from orders o full outer join customers c
on c.customer_id=o.customer_id

--Aggregation with JOINs

--	Q29.Count how many orders each customer has placed.
select c.customer_id,count(o.order_id)as Total_orders from orders o inner join customers c
on o.customer_id = c.customer_id
group by c.customer_id
order by total_orders desc

--Q30.Find the total quantity ordered for each product.
select p.product_id,sum(o.quantity) from orders o join products p
on p.product_id = o.product_id
group by p.product_id

--Q31.Calculate the estimated total value of orders for each product category.
select p.category,round(sum(p.price*o.quantity),2) as total_value from orders o join products p
on o.product_id = p.product_id
group by p.category

--Q32.Find the number of orders placed by customers in each city.
select c.city,count(o.order_id) as No_of_orders from customers c  join orders o
on o.customer_id = c.customer_id
group by c.city

--Q33.Find the average product price for each category.
select category,Round(AVG(price),2) AS AVG_Price from products
group by category

--Q34.Find categories whose products have an average price greater than 100.
select category,Round(AVG(price),2) AS AVG_Price from products
group by category
having AVG(price) > 100

--Q35.Find customers who have placed more than three orders
select c.customer_id ,count(o.order_id) as total_orders from customers c join orders o
on c.customer_id = o.customer_id
group by c.customer_id
having count(o.order_id) > 3

--Q36.Find the most expensive product in each category.
select product_name,price,category from products p1
where price= (
select max(price) as expensive_product from products p2 
where p2.category = p1.category
)

--Q37.Find the largest quantity ordered for each product
select p.product_id,max(o.quantity) from products p join orders o
on o.product_id = p.product_id
group by p.product_id

--Q38.Find the number of distinct customers who ordered each product.
select count(distinct c.customer_id) as total_customers,p.product_id from customers  c join orders o
on o.customer_id = c.customer_id
inner join products p
on p.product_id = o. product_id 
group by p.product_id
order by total_customers desc

--Q39.Calculate estimated order value by payment method.
select o.payment_method ,round(sum(p.price),2) as total_money from orders o join products p
on o.product_id = p.product_id
group by o.payment_method

--Q40.Find customers whose total ordered quantity is greater than 10.
select c.customer_id,sum(o.quantity) as total_quantity from customers c join orders o
on c.customer_id = o.customer_id
group by c.customer_id
having sum(o.quantity) > 10



--Interview-style JOIN problem

--Q41.Find the top five products by total quantity ordered.

select top 5 p.product_id ,sum(o.quantity) as total_quantity from orders o join products p
on p.product_id = o.product_id
group by p.product_id
order by total_quantity

--Q42.. Find the top five customers by number of orders.
select top 5 c.customer_id,count(o.order_id) as no_of_orders from customers c join orders o
on c.customer_id = o.customer_id
group by c.customer_id
order by no_of_orders desc

--Q43.Find customers who ordered products from more than one category.
select c.customer_id,count(distinct p.category)  from customers c join orders o
on c.customer_id = o.customer_id
inner join products p
on p.product_id = o.product_id
group by c.customer_id
having  count(distinct p.category) > 2

--REchecking Q43.

select c.customer_id,p.category,o.product_id from customers c join orders o
on c.customer_id = o.customer_id
inner join products p
on o.product_id = p.product_id
where c.customer_id='c0001'

--Q44.Find each customer's earliest order date.
select c.customer_id,min(o.order_date) as earliest_ordate from customers c join orders o
on c.customer_id =o.customer_id
group by c.customer_id

--Q45.Compare each customer's signup date with their first order date.
select c.customer_id,min(o.order_date) as earliest_ordate,c.signup_date,datediff(day,c.signup_date,min(o.order_date)) as days from customers c join orders o
on c.customer_id =o.customer_id
group by 
c.signup_date,
c.customer_id

--Q46.Show the estimated total value and order count for each city.
select c.city,count(o.order_id) as total_orders ,round(sum(p.price),2) as total_revenue from customers c join orders o
on c.customer_id =o.customer_id
inner join products p
on p.product_id = o.product_id
group by c.city
order by total_revenue desc

--Q47.Compare the number of orders made by loyalty members and non-members.
select c.loyalty_member,count(o.order_id) as total_orders from customers c join orders o
on c.customer_id = o.customer_id
group by c.loyalty_member

--Q48.Find products ordered through more than one payment method.
select p.product_id ,count(distinct o.payment_method) as no_of_payments from orders o join products p
on o.product_id = p.product_id
group by p.product_id
having count(distinct o.payment_method) > 2

--Q49.Find categories with at least five distinct customers ordering from them.
select  count(distinct o.customer_id)as distinct_customers,p.category from orders o join products p
on o.product_id = p.product_id
group by p.category
having count(distinct o.customer_id) >= 5

--Q50.Produce a summary with customer ID, city, order count, total quantity and estimated order value.
select c.customer_id,c.city,count(o.order_id) as total_orders,
sum(o.quantity) as total_quanity,round(sum(o.quantity*p.price),2)
as estimated_value from customers c left join orders o
on c.customer_id = o.customer_id
join products p
on p.product_id =o.product_id
group by
c.customer_id,
c.city
