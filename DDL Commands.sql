--create a database
Create database Employee;

--To choose the database to affect the changes happen
use Employee;


--create a Table 
create table EmployeePersonalDetails(
EmployeeId int Identity(1,1) primary key,
EmployeeName nvarchar(30) not null,
EmployeeFatherName nvarchar(30)not null,
EmployeeMotherName nvarchar(30)not null,
EmployeeEmail varchar(40)not null,
EmployeePhoneNumber varchar(10)
);

--Alter the Table using Alter command add a column
alter table EmployeePersonalDetails add  EmployeeAddress nvarchar(50);

--Add constraints bu using alter command
Alter table EmployeePersonalDetails Add Constraint EmpEmail_Unique Unique(EmployeeEmail);
 
--Remove Constraints by using Alter command
Alter table EmployeePersonalDetails drop  Constraint EmpEmail_Unique;

--alter the Coluns using Alter Command
Alter table EmployeePersonalDetails alter column EmployeeEmail nvarchar(40) not null;

--truncate the table (delete all rows except Table Stucture)
truncate table EmployeePersonalDetails;

--drop the column using Drop command
drop table EmployeePersonalDetails;


--drop the database using Drop command
drop database Employee;