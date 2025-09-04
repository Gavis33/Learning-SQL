-- #7. LIMIT: To specify the no of rows you want in the output

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3 # from starting rou till row 3
;

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3, 1 # 1 row after 3
;

-- Use case:
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3 # from starting rou till row 3
;

# Additional info
-- ALIAS (AS) to change the attribute name (however it is implicitly done without using AS)

SELECT gender, AVG(age) AS oldest_employee
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
; 
# OR
SELECT gender, AVG(age) oldest_employee
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
; 

