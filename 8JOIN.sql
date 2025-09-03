-- #8. JOIN: To combine two COLUMNS having same / similar values (not same clolumn names)
-- 3 Types of joins:
-- -> Inner join
-- -> Outer join
-- 		-> Left outer join
-- 		-> Right outer join
-- -> Self join

SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM parks_and_recreation.employee_salary
;

-- INNER JOIN: Return the rows that are same in both columns from both tables
-- By default "JOIN" represents an inner join but we can write "INNER JOIN" explicitly

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN: 

-- LEFT OUTER JOIN: Take everything from the left table (even if there is no join) and only return the mathches from the right table

SELECT *
FROM parks_and_recreation.employee_demographics AS dem #left table
LEFT JOIN parks_and_recreation.employee_salary AS sal  #right table
	ON dem.employee_id = sal.employee_id
;

-- RIGHT OUTER JOIN: Take everything from the right table (even if there is no join) and only return the mathches from the left table

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN: It is when you tie the table to itself
-- Use case example: A secret santa

SELECT 
emp1.employee_id AS santa,
emp1.first_name AS santa_fname,
emp1.last_name AS santa_lname,
emp2.employee_id AS emp,
emp2.first_name AS emp_fname,
emp2.last_name AS emp_lname
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	-- ON FLOOR(1 + RAND() * emp1.employee_id) = emp2.employee_id
    ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables:

SELECT * 
FROM parks_and_recreation.parks_departments #this is a reference table (a table in which we aren't gonna add a lot of info to)
;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS dep
	ON sal.dept_id = dep.department_id #"dep" can be tied to "sal" table and not "dem" table because "sal" has same attribute as "dep" (dept_id = department_id)
;
