
---- USE SELECT ,WHERE, ORDER BY  AND GROUP BY ---

INSERT INTO Orders
(order_id,user_id,amount,order_date)
values
(205,001,600,'2025-04-22'),
(206,002,700,'2025-04-25'),
(207,001,900,'2025-05-05');


select * from Orders;

select user_id,Count(*) as total_orders
from Orders
where amount >500
group by user_id
order by total_orders asc;

select * from  Orders;

INSERT INTO Users
values (009,'Deepu','deepu@gmail.com');

select * from users;

insert into Orders
(order_id,user_id,amount,order_date)
values
(208,005,750,'2025-04-29');


select * from Orders;

--- INNER JOIN ---

select users.name,orders.amount
from Users 
inner join Orders on users.user_id=Orders.user_id;

 
---- LEFT JOIN ---

select users.name,orders.amount
from Users 
left join Orders on users.user_id=Orders.user_id;


--- RIGHT JOIN ---

select users.name,orders.amount
from Users 
left join Orders on users.user_id=Orders.user_id;



----- SUB QUERIES ----

SELECT NAME FROM Users
where user_id in 
(
select user_id from Orders
where amount >600
) ;


select  name,
(select SUM(amount) from Orders
where orders.user_id = Users.user_id) as total_amount
from Users;


