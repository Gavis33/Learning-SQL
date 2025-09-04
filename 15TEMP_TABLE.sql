-- TEMPORARY TABLE: Tables which are visible only to the session they are created in
-- Usage: To restore intermediate results for complex queries(some what like a CTE) 
-- 		  To manipulate data before inserting it to a permanent table

-- Creating a temporary table (2 ways):
--  1. 
CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Steve', 'Rogers', 'Civil War');

SELECT *
FROM temp_table;

-- *2.
SELECT *
FROM parks_and_recreation.employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;
SELECT *
FROM salary_over_50k;










