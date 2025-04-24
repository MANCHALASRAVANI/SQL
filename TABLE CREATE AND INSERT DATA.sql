create schema TASK;


use TASK;


create table Users
(user_id int,
name varchar(20),
email varchar(30));


insert into Users
(user_id ,name,email)
values
(001,'Sravani','sravani@gmail.com'),
(002,'Akshara','akshara@gmail.com'),
(003,'Ramya','ramya@gmail.com'),
(004,'Varshini','varshini@gmail.com');


create table Orders
(order_id int primary key,
user_id int,
amount decimal,
order_date date);


insert into Orders
(order_id,user_id,amount,order_date)
values
(201 ,001,250,'2025-04-20'),
(202,002,400,'2025-04-25'),
(203,003,500,'2025-04-30'),
(204,004,800,'2025-05-10');



alter table Users
modify column  user_id int primary key;


select * from Users;


alter table Orders
modify column amount int;

select * from Orders;