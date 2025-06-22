 DDL & Constraints:
1) What are the five major constraints in SQL?
domain - check , unique , not null , default
key - primary key
refential integrity - foreign key

2) What’s the difference between PRIMARY KEY and UNIQUE?
unique contraints dont allow duplicates value whereas pk identifies each record uniquely and dont allow duplicate and null values

3) Can a table have multiple UNIQUE constraints? What about multiple PRIMARY KEYs?
yes a table can have multiple unique constraints but not multiple primary key (but it can span multiple columns — composite key).

4) What does the NOT NULL constraint do?
not null constraints dont allow nulllvalues, Ensures that the column must contain a value and cannot be left empty (NULL).

5) What’s the purpose of DEFAULT? Give an example.
if any column has no value then default value will take place
country VARCHAR(30) DEFAULT 'India'

6) Explain the difference between CHECK and FOREIGN KEY.
check contraints will check the following conditions like rules whereas foreign key are reference pk from another table (Enforces a relationship by referring to a PRIMARY KEY in another table)

7) Write a SQL statement to create a table with the following:

id – integer, primary key

name – varchar(50), cannot be null

age – integer, must be between 18 and 60

country – default 'India'

create table internatinalStudent(id int primary key,
name varchar(50) not null , 
age int check(age between 18 and 60) , 
country varchar(30) default "INDIA");

✍️ DML:
8) What is the difference between INSERT INTO and INSERT INTO ... SELECT?
insert into ... selct means it basically transfering of data to one table to another(copies data from another table)
whereas insert into means we are adding/inserting the data (manually adds data)

9) What happens when you use UPDATE without a WHERE clause?
the update function will apply/update on every value of that particular col

10) What is the effect of running DELETE FROM table_name; without any condition?
it will empty the table or deletes the enitre data



Set 2: GATE-Oriented MCQ/Conceptual
Which of the following will violate a CHECK (age > 18) constraint?
a) NULL
b) 20
c) 17 - this one correct
d) '25' - correct 'x'

Which of these statements is true?
a) DELETE removes structure and data
b) TRUNCATE removes only selected rows
c) DELETE can be rolled back - true
d) TRUNCATE can be used with WHERE clause

Which constraint ensures referential integrity?
a) PRIMARY KEY
b) CHECK
c) FOREIGN KEY - correct
d) UNIQUE

Which command is used to remove all rows from a table but keep the table structure?
a) DROP
b) TRUNCATE - correct
c) DELETE
d) REMOVE

Which of the following is not part of DML?
a) SELECT
b) INSERT
c) DELETE
d) CREATE - correct


 Set 3: Frequently Asked Interview Questions
1) What's the difference between DELETE, TRUNCATE, and DROP?
delete - dml command,can undo , slower (deletes one by one) , deletes all data but can be conditional.
truncate - ddl commmand, cant undo , faster , its basically drop & create (will drop entire data but table exist).
drop - ddl command, cant undo , it deletes entire data and structure 

2) Can you explain when to use CHECK constraint with a real-world example?
we can use the check contraints where the data has to be in certain range and cannot exist beyound that like you must be 18 + to be eligible for some exams 
create table student( id int , 
name varchar(50) , 
age int check(age>=18));

3) When would you use a FOREIGN KEY in database design?
when i want data from a parent table to a child table
use a foreign key to enforce relationship between tables 
 For example, if you have a students table and a departments table, you can link students.department_id to departments.id.

4) Can a foreign key reference a column with NULL values?
Yes. A foreign key column in the child table can contain NULL values, meaning the relationship is optional.
But: If a value is provided, it must match a value in the parent table.

5) How do constraints help in maintaining data integrity?
constraints are the certain strict rules defiined on the col of tables like not allowing nul values , duplicates , uniqueness, CHECK → Data must meet conditions,FOREIGN KEY → Maintains valid relationships, They prevent human errors and ensure data reliability. etc

6) What's the role of DEFAULT constraint in real-world apps?
if there are null values then default value will take place 
The DEFAULT constraint provides a fallback value when no input is given
country varchar(30) default 'INDIA'

7) How is UPDATE with a subquery different from a regular UPDATE?
a regular update set a fixed value
ex - update employees 
     set salary = 50000
     where department = 'HR';
     
8) An UPDATE with a subquery fetches data dynamically from another table:
     UPDATE employees
SET salary = (SELECT avg_salary FROM departments WHERE departments.id = employees.department_id);

9) What are some best practices for writing DML queries that modify data in production systems?
Always test on staging before production.

Use transactions to allow rollback if something goes wrong.

Always include a WHERE clause (especially in UPDATE and DELETE).

Make backups before bulk operations.

Avoid hardcoding values; prefer parameters or bindings.

Log changes and audit critical modifications.

