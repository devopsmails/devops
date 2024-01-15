What is SQL Syntax ?  
----------------
Case insensitive (follows Upper & lower case)

SQL EXPRESSIONS:
-----------

Key word  

SQL statements:
--------------
get the data from db  

SQL DATA TYPES:
-----------
Numaric:  INT, BIT(01), FLOAT, BOOLEAN,  
STRING: CHAR, VARCHAR, TEXT   
DATETIME: DATA(YYYY-MM-DD), DATETIME(YYYY-MM-DD 23:39:05), TIMESTAP(UTC, IST)  
XML, JSON:  

SQL Operators:  
-------------
are conditions in SQL statement  

Special Keywords & Charecters  
Complex Operations  
condional Statements & clause (where)    

Arithmentic:  additon, subtraction, Multiplication, devision     
Logical : and, not, between   
Comparision:  2 diff data , Equal to (=), not equal to (!=), Lessthan(<), Greater Than(>), >= , <=   
BITWISE:   
SET:   


Create table:  
-----------
```
CREATE TABLE employees1 (
  id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  city VARCHAR(255) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id)
);
```
add values to table:  
-----------------
```
INSERT INTO employees1 (id, name, age, city, salary) VALUES (1, 'SURESH', 30, 'Puttaparti, AP', '40000');
INSERT INTO employees1 (id, name, age, city, salary) VALUES (2, 'Bhargavi', 29, 'Bukkapatnma, KA', '50000');
INSERT INTO employees1 (id, name, age, city, salary) VALUES (3, 'Shiva', 31, 'Gorantlapalli, TN', '60000');
INSERT INTO employees1 (id, name, age, city, salary) VALUES (4, 'Intiaz', 32, 'Birapuram, KL', '70000');
INSERT INTO employees1 (id, name, age, city, salary) VALUES (5, 'Prasad', 33, 'Lingareddipalli, TG', '80000');
```
view everydata from table:  
-----------------------
```
SELECT * FROM employees1
```
