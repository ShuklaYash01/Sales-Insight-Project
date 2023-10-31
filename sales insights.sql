create table customers
(
customer_code varchar(255),
customer_name  varchar(255),
customer_type varchar(255)
);

create table date_t
(
date_t DATE,
cy_date DATE,	
yearr int ,
month_name varchar(255),
date_yy_mmm varchar(255)

)
Create Table markets
(
markets_code varchar(255),
markets_name varchar(255),
zone varchar(255)
)


create table products
(
product_code varchar(255),
	product_type varchar(255)
)

create table transactions
(
product_code varchar(255),
customer_code varchar(255),
market_code varchar(255),
order_date Date ,
sales_qty int,
sales_amount DECIMAL (10,2),
currency varchar(255)
)

select *from customers
select *from date_t
select *from markets
select *from products
select *from transactions

-- view the sale for year 2019
select sum(sales_amount) from transactions
inner join date_t
on transactions.order_date = date_t.date_t
where yearr = '2019'

-- view thw sale of chennai only in 2019 
select sum(sales_amount) from transactions
inner join date_t
on transactions.order_date = date_t.date_t
where yearr = '2019'and market_code = 'Mark001'


