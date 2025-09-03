-- ORDER BY: (sort by ascending / descending)
-- ASC (default) for ascending order
-- DESC for descending order

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY first_name
; 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
; 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age
; 

-- Using column index
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4
; 