-- DDL -> Create , Alter , Drop , Truncate 
-- and it cannot be  undo

-- 1) Create 
CREATE database abc_pvt_ltd;
use abc_pvt_ltd;
CREATE table students(id int,  
Name varchar(50), 
courses varchar(30) , 
gender enum('f','m'));

create database xyz_ltd;

create table products(p_id int,
p_name varchar(50),
category varchar(30),
subcategory varchar(50));

create table employees(emp_id int,
Name varchar(50) , 
age int , 
gender enum('f',"m"), 
hiring_date date , 
photo blob);

-- 2) Alter (for Tables only)

-- Adding

-- for single column

-- Add column as the last column -> its default
alter table students
add column age int;

-- Add column at the first 
alter table students
add column sr_no int first;

-- Add column after specific column
alter table students
add column email varchar(20)
after courses;

-- for multiple column
alter table students
add column (mob_num char(10), aadhar_num char(12));

alter table students
add column divi int after courses,
add column marks int after age;

-- Dropping 

alter table students
drop column divi;

-- Modifying

alter table students
modify column gender char(1);

-- Renaming
-- for table 

alter table students
rename to Student_details;

rename table student_details to students;

-- for column 

alter table students 
rename column Name to fullname;


-- 3) Drop ( dropping the entire table with data) works on both table & database)

drop table products;

-- 4) Truncate (empty the table but the table will exist with no data)
-- --- combination of drop and create
create table student(id int, 
Name varchar(20));

truncate table student;



