-- #4. GROUP BY
-- Group together rows that have same values in the specified column/s that you are grouping on.
-- We can run an agregate function after grouping.

SELECT gender 
FROM  parks_and_recreation.employee_demographics
GROUP BY gender
;

-- Here AVG(age) is the aggregate function 
SELECT gender, AVG(age)
FROM  parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM  parks_and_recreation.employee_demographics
GROUP BY gender
; 
