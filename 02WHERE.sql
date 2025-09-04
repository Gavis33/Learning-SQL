-- #2. WHERE clause

-- Comparision operators:
-- =, !=, <, >, <=, >=

-- Datatypes:
-- Integers, Strings, Date

-- Logical operators:
-- AND, OR, NOT

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary > 10000
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1969-06-09'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1969-06-09'
AND gender = 'Male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (birth_date > '1969-06-09' AND age > 40)
OR age = 50
;
