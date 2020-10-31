--Using SQL DML commands with operators,functions and set operator

-- Inserting data into employee table
 insert into tbl_employee values (101,'Manasi',90000,'03-jun-2022');
 insert into tbl_employee values (102,'Manvika',75000,'08-jun-2022');
 insert into tbl_employee values (103,'Mayuri',95000,'08-july-2022');
 insert into tbl_employee values (104,'Sakshee',70000,'08-aug-2022');
 insert into tbl_employee values (105,'Lavanya',62000,'08-aug-2022');
 insert into tbl_employee values (106,'Kriti',50000,'08-sep-2022');

-- Fetch all the inserted data 
select * from tbl_employee;
select emp_name,emp_salary from tbl_employee;
select emp_name,emp_salary from tbl_employee where emp_salary>80000;

-- Update the values from existing columnof table
update tbl_employee set emp_salary=75000 where lower(emp_name)='sakshee';
update tbl_employee set emp_name='Manasi W' where emp_id=101;
update tbl_employee set emp_name='Sakshee P' where emp_id=104;

--delete certain records from employee table
delete from tbl_employee where emp_salary<65000;
--delete all rows
delete from tbl_employee;