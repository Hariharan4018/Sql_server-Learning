
--insert all column values to the row
insert into EmployeePersonalDetails values('hari','ramesh','backiyalakshmi','hariharan4018official@gmail.com','6379908621');

--insert only specified column values to the row
insert into EmployeePersonalDetails(EmployeeName,EmployeeFatherName,EmployeeMotherName,EmployeeEmail)
values('hariharan','ramesh','Backiyalakshmi','asdfasdf@gmail.com');

--insert Multiple rows at Same time
insert into EmployeePersonalDetails values('hariharan','ramesh','backiyalakshmi','hariharanofficial@gmail.com','637991234'),
('karthick','ramesh','backiyalakshmi','karthick4018official@gmail.com','1234567890'),
('subash','Balaraman','alice','subash@gmail.com','1902387238');

--Update All Employee Details
Update EmployeePersonalDetails 
set EmployeePhoneNumber='1234567890';

--Update The employee details to the columns based on specific condition
Update EmployeePersonalDetails 
set EmployeePhoneNumber='6379908621'
where EmployeeName='hariharan';

--delete All the records in the table
Delete from EmployeePersonalDetails;

--delete the Records based on specific condition
Delete from EmployeePersonalDetails
where EmployeeName='hari';
