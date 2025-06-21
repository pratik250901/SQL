-- DML ( Data Manipulation Language)
-- -> works on actual data
-- -> insert , update , delete

-- insert 
-- insert into all cols(sequence matters a lot)

insert into students values(1,"Ram","Data Analytics");
insert into students values(1,"sham","Data Analytics");
insert into students values(2,"jam","Data Science");
insert into students values(3,"jam","Machine Learning");

select * from students;

-- insert into specific cols/changing the sequence 

insert into students(id,name) values (3,"ram");
insert into students(name,id) values ("pam",4);
select * from students;

-- auto increment
insert into products(name , mrp) values ("chair",240);

select * from products;

insert into products values (113, "table" , 270);

insert into products(name , mrp) values ("books",340);

-- insert into from another table( data transferring , appending the table)

create table students_cpy(id int, name varchar(50) default "NA" , course varchar(30) default "NA");

select * from students_cpy;
insert into students_cpy
(select * from students); 

-- update ( editing the original data)

set sql_safe_updates = 0;
 
update products -- entire value = 220
set MRP = 220;

-- mul values

update products
set mrp = 270 ,
name = "story books" 
where id = 114;

select * from students;

update students
set courses = "Machine learning"
where name = "ram" and courses = "data analytics";

-- Delete 
delete from students_cpy;

delete from students
where id = 4;

select * from students;
