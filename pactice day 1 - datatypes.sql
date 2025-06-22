 Set 1: General Questions (Basics Check)
1) What is the difference between CHAR(n) and VARCHAR(n)?
-- in char datatype  is a fixed length dataype , we have to specify the fixed length where as in varchar is a variable length datatype the space got allocated taken back or memory dont go wasted 
char is faster but varchar is slower in excuetion

2) What data type would you use to store:
-- 
A person’s full name - varchar /char

Age int

Date of birth  - date 

Salary - float / decimal(10,2)

Profile photo - blob

3) What is the default precision of the FLOAT data type in SQL?

-- FLOAT(M,D)

Default precision: around 6–7 digits (M=total digits, D=decimal places).

In PostgreSQL, FLOAT is equivalent to double precision.

4) Which data type is suitable to store:

-- Phone numbers - char as it has fixed length

Boolean values (True/False)?  - boolean or tinyint

5) Can you store decimal values in the INT data type?

-- no we should use decimal or float

6) What is the maximum size of VARCHAR(n) in MySQL vs PostgreSQL?
-- 65535 in mysql and 10485760 in postgresql

7) Explain the difference between DATE, DATETIME, and TIMESTAMP.
-- date is "yyyy-mm-dd" , datetime & timestamp is "yyyy-mm-dd hh:mm:ss" timestamp is half the size of a datatime. 
-- timestamp is faster

8) What data type would you use to store JSON in PostgreSQL?
-- json and jsonb are the datatype used to store


Set 2: GATE-Oriented MCQ/Conceptual
Which of the following SQL types is not fixed length?
a) CHAR(10)
b) INTEGER 
c) VARCHAR(20) - correct
d) BOOLEAN

You need to store a value like 123456.789 with exact precision. Which type is best?
a) FLOAT
b) DOUBLE 
c) NUMERIC(9, 3) - correct (FLOAT/DOUBLE are approximate and not suitable for financial data.)
d) INT

What happens if you insert a string of length 11 into a CHAR(10) column?
a) Error is thrown 
b) Value is truncated - correct (Value is truncated (in MySQL with warnings; errors can be triggered if SQL mode is strict))
c) Value is accepted and trimmed
d) Value is rejected and NULL is stored

Which SQL data type is ideal for time zone-aware timestamp storage in PostgreSQL?
a) TIMESTAMP
b) TIME WITH TIME ZONE
c) DATETIME
d) TIMESTAMP WITH TIME ZONE - tick

True or False:
FLOAT always stores more precise values than NUMERIC. - false  (NUMERIC (or DECIMAL) is exact, used in financial applications.
                                                                          FLOAT is approximate.)


Set 3: Frequently Asked Interview Questions
1) What’s the difference between DECIMAL, FLOAT, and NUMERIC?
-- decmal and float comes under deciaml datatypes whereas numeric datatypes comes under numeric generally int or complete whole numbers 
-- decimal has precision& scale (10,0) , float max has 6 digits (4 bytes) , numeric has tiny nt , small int , med int , int , big int range from 0 to 2^64-1 respectively
(FLOAT: Approximate, can lose precision (good for scientific, not money).

DECIMAL / NUMERIC: Exact with defined precision/scale.

DECIMAL(10,2) = 10 digits total, 2 after decimal.

NUMERIC and DECIMAL are functionally the same in most SQL dialects.)

2) Why would you use BOOLEAN over storing 0/1 as INT?
-- will you boolean over 0/1 as int because boolean improves code readability , constraints and misuse like 3 , 5 etc by mistake in int

3) What are the trade-offs between CHAR and VARCHAR?
-- varchar is slower but can take back the allocated space whereas char is faster but space may got wasted
(CHAR is better for fixed-length like country codes.
VARCHAR saves space when length varies.)

4) How would you store time-sensitive transaction logs in a database?
-- use timestamp and datetime often with default current_timestamp

5) Why should we avoid storing phone numbers as INT?
-- because phone num has fixed length so storing in char will be great option rather than int as they may added  

6) In a database storing financial data (like transactions), which datatype is preferred and why?
- decimal and numeric because exact precsion is crucial to avoid rounding offs

7) If you need to store large chunks of text (e.g., blog content), what SQL datatype would you choose?
-- varchar
(Use TEXT for very long content.
MySQL: TEXT, MEDIUMTEXT, LONGTEXT)

8) What are BLOB and CLOB? When would you use each?
blob used for image and videos but clob used for Stores large text (like articles, logs).
Use BLOB for media files; CLOB for documents.

