create database gfg;

create table employees(id int primary key , firstname varchar(50) , age int , department varchar(50) default "NA");

insert into employees values(1,"John Doe",28,"HR"),(2,"Jane smith",34,"Finance"),(3,"Jim Brown",25,"IT"),(4,"Jake White",30,"HR"),(5,"Jill Black",29,"IT");

alter table employees 
rename column firstname to name;

select * from employees;

-- Selecting Specific Columns

select name , department
from employees;

-- Using Aliases
select name as emp_name , department as dept
from employees;

 -- Filtering Data with WHERE Clause
 select * from employees
 where age > 30;
 
 -- Filtering Data with IN and NOT IN Command
 select * from employees
 where department in ("sales","HR");
 
 select * from employees 
 where department not in ("sales" , "HR");
 
 -- Using Multiple Conditions with AND and OR
 select * from employees
 where age > 25 and department = "IT";
 
 select * from employees
 where age > 30 or department = "HR";
 
-- Using Comparison Operators
select * from employees
where age >= 25 and age <= 30;

-- To retrieve all employees whose age is between 25 and 30:
select * from employees
where age between 25 and 30;

-- To retrieve all employees whose name starts with 'J':
select * from employees
where name like "j%";

-- To Retrieve All Employees Who Do Not Have a Department Assigned
select * from employees 
where department is null;

-- To Retrieve All Employees Who Do Have a Department Assigned
SELECT * FROM employees
where department is not null;

-- Sorting Data with ORDER BY

-- To retrieve all employees and sort them by their age in ascending order:
select * from employees
order by age asc;

-- Multiple Column Sorting
select * from employees

-- To sort employees by department in ascending order and within each department by age in descending order:
order by department asc , age desc;

--  Using Offsets and Limits

-- To retrieve the first 3 employees:
select * from employees
limit 3;

-- To retrieve 3 employees starting from the second row:
select * from employees
limit 3  offset 1;

