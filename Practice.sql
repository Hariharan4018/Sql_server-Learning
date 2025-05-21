use Employee;

create table Orders(
OrderId int Primary Key,
CustomerName Varchar(30),
product varchar(30),
quantity int ,
price decimal(10,2),
OrderDate Date
);

INSERT INTO Orders (OrderID, CustomerName, Product, Quantity, Price, OrderDate) VALUES
(1, 'Alice', 'Pen', 10, 5.00, '2024-01-10'),
(2, 'Bob', 'Notebook', 2, 20.00, '2024-01-12'),
(3, 'Alice', 'Pen', 5, 5.00, '2024-01-15'),
(4, 'Charlie', 'Pencil', 7, 3.00, '2024-02-01'),
(5, 'Bob', 'Pen', 3, 5.00, '2024-02-02'),
(6, 'Alice', 'Notebook', 1, 20.00, '2024-02-10');


--Q1)Total quantity sold for each product
select PRODUCT,sum(Quantity) as TotalQuantity from Orders
group by Product;

--Q2)Total sales amount (Quantity * Price) by each customer
select CustomerName,Sum(Quantity*Price) from Orders
group by CustomerName;


--Q3)Number of orders made by each custome
select CustomerName,Count(*) from Orders
group by CustomerName;


--Q4)Find the total quantity of each product sold in February 2024
select Product,sum(Quantity) as TotalQuantity
from Orders
where MONTH(OrderDate)=2
group by product
order by Sum(Quantity) desc;


--Q5)Find which customer ordered each product and how many times
select CustomerName,Product,Count(*) as TimesOrderd
from Orders
group by CustomerName,Product;

--Q6)Get the average quantity per product
select Product,AVG(Quantity) as AverageQuantity
from orders
group by Product;

--Q7)Find the highest quantity ordered for each product
select Product,MAX(Quantity)
from Orders
group by Product;

--Q8)Group the orders by month and find total revenue per month
select Format(OrderDate,'MMMM'),Sum(Quantity*Price)
from Orders
group by Format(OrderDate,'MMMM'),Month(OrderDate)
Order by Month(OrderDate);

select * from Orders;

drop table Orders;