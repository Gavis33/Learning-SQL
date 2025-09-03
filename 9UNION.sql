-- #9. UNION: Allows to combine ROWS from different/same table together

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
-- UNION # by defult it is UNION DISTINCT
-- UNION DISTINCT # by defult it is UNION DISTINCT
UNION ALL 
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

SELECT first_name, last_name, 'Elder male' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'Elder female' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'High paid' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
