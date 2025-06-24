create table Emps(employee_id int , name varchar(40) , age int , department varchar(40));
INSERT INTO Emps(employee_id, name, age, department) VALUES
(1, 'John', 35, 'Sales'),
(2, 'Alice', 28, 'Marketing'),
(3, 'Bob', 40, 'HR'),
(4, 'Sarah', 33, 'Finance'),
(5, 'Michael', 25, 'Operations'),
(6, 'Emily', 29, 'Sales'),
(7, 'David', 42, 'HR'),
(8, 'Jessica', 31, 'Marketing'),
(9, 'Richard', 37, NULL),
(10, 'Michelle', 26, 'Finance');

select * from emps;

alter table emps
add column email varchar(50);

alter table emps
rename column employee_id to id;

alter table emps 
drop column email;

drop table  emps;


-- Creating a table with NOT NULL and CHECK constraints
create table emps(id int , name varchar(50) not null, age int check (age >= 18) , department varchar(50));

desc emps;

-- Creating a table with a SERIAL primary key and additional constraints
create table emps2(serial_no int primary key , name varchar(50) not null , age int check (age>=18) , department varchar(50) default "NA");

desc emps2;

DROP TABLE IF EXISTS emps2;
CREATE TABLE employee1 (
    employee_id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);
SELECT * FROM employee1;

-- Dropping the table if it exists and creating a new one with constraints
DROP TABLE IF EXISTS employee1;
CREATE TABLE employee2 (
    employee_id INT,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(50)
);
SELECT * FROM employee2;


-- Dropping the table if it exists and creating a new one with additional constraints
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    department VARCHAR(50),
    hire_date DATE
);
SELECT * FROM employee;