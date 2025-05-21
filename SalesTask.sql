
--Created a Database for Sales
create database sales;

--Make use of the Database
use sales;

--Created the Table for the SalesInformation
create table SalesInformation(
SaleId int identity(1,1) primary key,
SaleDate date not null,
CustomerName nvarchar(30) not null,
Product nvarchar(30) not null,
Quantity int not null,
PricePerUnit decimal(10,2) not null,
PayementMethod nvarchar(30) not null
);

--Inserted the Values to the SalesInformation Table
insert into SalesInformation values('2025-05-01','Alice','Headphones',2,150,'Card'),
('2025-05-02','Bob','Smartphone',1,700,'Online'),
('2025-05-03','Charlie','Charger',3,25,'Cash'),
('2025-05-03','Alice','Laptop',1,1200,'Card');
insert into SalesInformation values('2025-05-16','Hariharan','HeadPhones',4,1500,'Online');

--Update the Payment Method to Online for all sales made by Alice
Update SalesInformation
set PayementMethod='Online' 
Where CustomerName='Alice';

--Update the Price per unit of Charger to 30.00
Update SalesInformation
set PricePerUnit=30
where Product='Charger';

--Delete All sales records where the quantity is les than 2
delete from SalesInformation 
where Quantity<2;

--Delete the record of any sale made by Bob
delete from SalesInformation
where CustomerName='Bob';

--List of All sales made by using Card
select * from SalesInformation
where PayementMethod='Card';

--Calculate the Total revenue generated(Quantity * PricePerUnit)
select sum(Quantity*PricePerUnit) As TotalRevenueGenerated 
from SalesInformation;


--Display the total Quantity of each product sold
select product,sum(Quantity) as NumberOfProductsSold 
from SalesInformation
group by Product;


--Show all sales record  where the Quantity sold is more than 1
select * from SalesInformation
where Quantity>1;


--Find the Customer Who spent the most in Singlg Transaction
select top 1 CustomerName ,Quantity*PricePerUnit as AmountSpend from SalesInformation
Order by Quantity*PricePerUnit desc;



select * from SalesInformation;