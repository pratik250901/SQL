/* General Questions (Concept Check)
1) What is the use of the DEFAULT constraint in SQL?
ans) default constraint is a fallback value given when no explicit value is given during insertion
 
2) Which constraint ensures that a column does not have NULL values?
ans) not null 

3) What is the difference between PRIMARY KEY and UNIQUE?
ans) primary key uniquely identifies the col and there will be no null value , there can be only one primary key but in case of unique there can be multiple unique constraints , its mainly used to avoid duplicates 

4) Can we apply constraints after creating the table? How?
ans) yes , we can apply by altering the table like using add 
alter table add constraints age_check check(age >= 18);

5) Difference between VARCHAR, CHAR, and TEXT.
ans) char is fixed length datatype where varchar is variable length string doesnt waste spaces it return back the allocated spaces
text used to store large block of codes

GATE-Style MCQs / Theory
Which of the following constraints ensures data consistency between two tables?
a) NOT NULL
b) CHECK
c) FOREIGN KEY - correct
d) DEFAULT

Which SQL command is a part of DML?
a) ALTER
b) DROP
c) UPDATE - correct
d) CREATE

What happens when an INSERT violates a CHECK(age > 18) constraint?
a) NULL is inserted
b) Row is inserted with warning
c) Error is raised and insert is rejected - correct
d) Value is automatically changed to 18

Which of the following cannot be rolled back in SQL?
a) INSERT
b) DELETE
c) UPDATE
d) TRUNCATE - correct

Which of the following allows duplicate values?
a) PRIMARY KEY
b) UNIQUE
c) FOREIGN KEY -  correct
d) None 


Frequently Asked Interview Questions
What is the difference between DELETE, TRUNCATE, and DROP?
ans) delete - dml command , deletes all values but structure and can be conditionally used , is slower as it goes line by line , can be   rolled back
     truncate - ddl command , its basically drop & create , structure remains but data is cleared , is faster
     drop - ddl command, deletes structure and data
     
Why would you use a CHECK constraint in a banking application?
ans) To ensure that column values meet specific conditions. E.g., CHECK (balance >= 0) ensures no account has negative balance.

What are the pros and cons of using NOT NULL and DEFAULT together?
ans) pros -  there will no null values , Ensures all rows have a default value when not explicitly inserted
     cons - there may be duplicates, Might unintentionally insert default values (if not handled properly)

Explain how a FOREIGN KEY constraint enforces referential integrity.
ans) if we have to use two or more table simultaneously then referencing helps as all datas are together then it will be messy so 
we first take primary key from parent table then add it to the child table that primary key from parent table acts as foreign key in child table

A FOREIGN KEY links a column in a child table to the PRIMARY KEY in a parent table. It ensures that only valid data (existing in the parent table) can be inserted in the child table, maintaining consistency across tables.

What is the real-life use of ON DELETE CASCADE?
ans) if we use on delete cascade in child table then making changes in parent table directly changes in child table



 Revision (Mix of All Previous Topics)
True or False: A table can have multiple UNIQUE columns but only one PRIMARY KEY.
-> True

Write a command to add a new column gender CHAR(1) to an existing table students.
-> alter table students
   add column gender char(1)

What is the purpose of the ALTER TABLE statement?
alter helps to update , modify , rename and add in columns 
alter also rename tables 

How do NUMERIC(5,2) and FLOAT differ in terms of precision?
numeric are exact values 
whereas float are approx. might round off (not for money)

Which datatype would you choose to store:

a) Aadhar number - char(12) 

b) Feedback paragraph - text

c) Product price - DECIMAL(10,2) or NUMERIC(10,2)
*/

/* Code-Based Task
 Table Creation + DML Practice
Create a table Employee with these columns:
emp_id – INT, PRIMARY KEY
emp_name – VARCHAR(50), NOT NULL
dept – VARCHAR(20), DEFAULT 'HR'
salary – DECIMAL(10,2), CHECK (salary > 0)
join_date – DATE, NOT NULL

Now write:

Insert 3 rows into this table using a single INSERT.
Update the salary of the employee with emp_id = 2 to 50000.
Delete all employees from HR department.
Add a new column email (with UNIQUE constraint).
Drop the column dept. */

create table if not exists employee1(
emp_id int primary key , 
emp_name varchar(50) not null , 
dept varchar(50) default "HR" , 
salary decimal(10,2) check (salary > 0),
join_date date not null);


insert into employee1 values (1,"ram" , "sales" , 1000003.34 , "2008-03-03") , (2,"sam" , "it" , 100879.34 , "2007-05-05") , (3,"kam" , "HR" , 1003403.34 , "2018-09-02");
update employee1
set salary = 50000
where emp_id = 2;

set sql_safe_updates = 0;

delete from employee1
where dept = "HR";

alter table employee1
add column email varchar(50) unique;

alter table employee1
drop column dept;
