--select All the columns from the employeePersonalDetails
select * from EmployeePersonalDetails;

--select the specified columns from the employeePersonalDetails
select EmployeeName,EmployeeFatherName 
from EmployeePersonalDetails;

--select specific Columns and the Specific records by filter with where
select EmployeeName,EmployeePhoneNumber 
from EmployeePersonalDetails
where EmployeeName='hari';

--select all columns and all records and order the table be the EmployeeName
select * from EmployeePersonalDetails
order by EmployeeName;