create database Ecommerce;

use Ecommerce;

create table Customers(customer_id int primary key, 
[Name] varchar(255),
Email VARCHAR(255) UNIQUE,
[Password] VARCHAR(255),
)

create table products(product_id int Primary Key,
productName varchar(255),
price DECIMAL(10, 2),
[Description] TEXT,
stockQuantity int);


create table cart(
cart_id int primary key ,
customer_id int,
product_id int,
quantity int,
foreign key (customer_id) references Customers(customer_id),
foreign key (product_id) references products(product_id)
);

create table orders(
order_id int primary key,
customer_id int,
order_date date,
total_price DECIMAL(10, 2),
shipping_address text
foreign key (customer_id) references Customers(customer_id)
)

create table order_items(
order_item_id int primary key,
order_id int,
product_id int,
Order_quantity int
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
)


--inserting values

insert into Customers (customer_id, [Name], Email, [Password])
values (1, 'Ram', 'ram@gamil.com', 'password123'),
(2, 'Rahul', 'rahul@gmail.com', 'securepass321'),
(3, 'Johnny', 'johnny@gmail.com', 'johnpassword');

insert into Products (product_id, productName, price, [Description], stockQuantity)
values(1, 'Laptop', 45000.99, '15.6-inch, Intel Core i7, 16GB RAM', 50),
(2, 'Smartphone', 10000.99, '6.5-inch, 128GB storage, Quad-camera', 100),
(3, 'Headphones', 500.99, 'Wireless Bluetooth headphones with noise cancellation', 200);

insert into Cart (cart_id, customer_id, product_id, quantity)
values (1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3);

insert into Orders (order_id, customer_id, order_date, total_price, shipping_address)
values(1, 1, '2023-05-03', 90001.98, '3, Main St,Anna nagar'),
(2, 2, '2024-05-04', 10000.99, '6, Raja Street, Raj Nagar'),
(3, 3, '2024-05-05', 1502.97, '7, Lal street, Ram Nagar');


select * from customers;

select * from products;

select * from cart;

select * from orders;

