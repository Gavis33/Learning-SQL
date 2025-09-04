-- #3. LIKE statement (to look for patterns):

-- Two special sequences / characters:
-- 1. "%" : Anything
-- 2. "_" : Specific

--  Different use cases of "%":

-- 1. Anything that has the specified stuff in the begining:
SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'A%'
;

-- 2. Anything that has the specified stuff anywhere in the attribute:
SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE '%e%'
;

-- Different use cases of "_":

-- 1. Specific value that has the specified stuff in the begining:
SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a__'
;

-- Combined use case of "%" and "_":

SELECT *
FROM parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a__%'
;

