-- #1. SELECT: 

SELECT * 
FROM parks_and_recreation.employee_demographics
; 

SELECT first_name 
FROM parks_and_recreation.employee_demographics
;

SELECT first_name, 
last_name, 
birth_date,
age,
#PEMDAS
(age + 10) * 2 + 2 
FROM parks_and_recreation.employee_demographics
;

#SELECT DISTINCT:
SELECT DISTINCT gender 
FROM parks_and_recreation.employee_demographics
;

SELECT DISTINCT first_name, gender 
FROM parks_and_recreation.employee_demographics
;









