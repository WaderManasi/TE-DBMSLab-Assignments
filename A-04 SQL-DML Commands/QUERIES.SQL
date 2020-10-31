-- Name: Manasi Wader
-- Topic:Joins,Subquery,Views

-- JOINS


-- SUB-QUERY
-- A subquery is used to return data that will be used in the main query as a condition to further restrict the data to be retrieved.
create table tbl_new as (select * from tbl_employee);
select ProductName
  from Product 
  where Id in (select ProductId 
                from OrderItem
                where Quantity > 100
              )
-- VIEW

--Virtual view of table
create view vw_employee as select emp_id,emp_name from tbl_employee;

select * from vw_employee;
insert into vw_employee values (107,'Aliya');
insert into vw_employee values (108,'Gunjan');

-- All changes made in view will be reflected in respective tables
select * from tbl_employee;

--permanently delete the data from view
drop view vw_employee;