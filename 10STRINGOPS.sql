-- #10. STRING FUNCTIONS: Built in functions to use and work with strings

-- 10.1. LENGTH:
SELECT LENGTH('Random_String');

SELECT first_name, LENGTH(first_name)
FROM parks_and_recreation.employee_demographics
ORDER BY 2
;

-- 10.2. UPPER & LOWER CASE:
SELECT UPPER('Random_String');
SELECT LOWER('Random_String');

SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM parks_and_recreation.employee_demographics
;

-- 10.3. TRIM: Remove preceeding and suceeding white spaces
-- 		 LTRIM: Remove preceeding white spaces
-- 		 RTRIM: Remove suceeding white spaces
SELECT TRIM(' Random_String   ');
SELECT LTRIM('    Random_String   ');
SELECT RTRIM('    Random_String   ');

-- 10.4. LEFT and RIGHT:
SELECT first_name, 
LEFT(first_name, 4), #(attribute, :range)
RIGHT(first_name, 4) #(attribute, range:)
FROM parks_and_recreation.employee_demographics
;

-- 10.5. SUBSTRING:
SELECT first_name, birth_date, 
SUBSTRING(birth_date, 2, 2) AS birth_year #(attribute, starting index, how many chars)
FROM parks_and_recreation.employee_demographics
;

-- 10.6. REPLACE:
SELECT first_name, 
REPLACE(first_name, 'L' ,'W'), 
REPLACE(REPLACE(first_name, 'L' ,'W'),'l' ,'w')
FROM parks_and_recreation.employee_demographics
;

-- LOCATE: 
SELECT LOCATE(' ', '   Random_String   ');

SELECT first_name, 
LOCATE('om', first_name)
FROM parks_and_recreation.employee_demographics
;

-- CONCATENATE:
SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM parks_and_recreation.employee_demographics
;



