-- CONSTRAINTS -> Rules defined on columns of the tables 

-- 1) Domain (default, not null , check , unique)

create  database constraints_db;

use constraints_db;

-- i) Default -> if no value is given , it would take the default values

create table students(id int ,
name varchar(50),
courses varchar(30) default 'NA');

Desc students;
desc constraints_db;

-- ii) Not Null -> Column cannot be null like phone num , aadhar num

create table employee(emp_id int not null , name varchar(50) , salary float);

desc employee;



-- iii) Unique -> no duplicates value are allowed

-- single col
create table emp(id int unique , name varchar(30) , salary float);

desc emp;

-- multi col indiviually 
create table emp2(id int unique , name varchar(30) , aadhar_num char(12) unique , salary float);

desc emp2;

-- multi col together 
create table emp3(id int , name varchar(30) , phone_num char(10) , salary float, constraint un unique(id,phone_num));

desc emp3;

-- iv) Check -> checking the conditions

-- single col
create table admin(id int , name varchar(30) ,
age int check (age>=21) , gender char(1));

desc admin;

-- multi col indiviaully
create table admin2(id int , name varchar(30) , age int check(age>=21) , gender char(1) check (gender = "f"));

-- multi col together 
create table admin3(id int, name varchar(20) , age int , gender char(1) , constraint ck check(age>=21 or gender = "M"));



-- key
-- primary key(it identifies each record uniquely)
   -- combination of 2 constraints(not null & unique)
   -- every table can only have one pk
   -- not necessary that it will be a single col
   
-- single col
create table trainers(t_id int primary key , name varchar(40), courses varchar(30), dept_id int);

desc trainers;

create table trainers2(t_id int not null unique , name varchar(40), courses varchar(30), dept_id int);

desc trainers2;

-- multi col(it will be a combination)

create table courses(id int , name varchar(20) , age int , courses varchar(20) , c_id int, constraint pk primary key(id , c_id));

desc courses;


-- 2) Foreign key(Referencial Integrity)

-- parent table(dimension table)
create table person(p_id int primary key, f_name varchar(20) , l_name varchar(20) , age int);

-- child table(fact table)
create table orders(o_id int primary key , o_num int , p_id int, foreign key(p_id) references person(p_id));

desc person;
desc orders;



