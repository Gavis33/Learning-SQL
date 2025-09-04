-- WINDOW FUNCTIONS: 
-- Similar to GROUP BY but they do not roll everything into a single row while grouping
-- Allow us to look at a partition/group but they each keep their own unique rows in the output
-- Concepts: ROW NUMBER, RANK and DENSE RANK

-- Difference between GROUP BY and a WINDOW function:
# GROUP BY:
SELECT edem.first_name, edem.last_name, gender, AVG(salary) as avg_salary
FROM parks_and_recreation.employee_demographics as edem
JOIN parks_and_recreation.employee_salary as esal
	ON edem.employee_id = esal.employee_id
GROUP BY edem.first_name, edem.last_name, gender
;

#WINDOW(OVER(PARTITON BY attribute))
SELECT edem.first_name, edem.last_name, gender, 
AVG(salary) OVER(PARTITION BY gender) as avg_salary
FROM parks_and_recreation.employee_demographics as edem
JOIN parks_and_recreation.employee_salary as esal
	ON edem.employee_id = esal.employee_id
;

SELECT edem.first_name, edem.last_name, gender, 
SUM(salary) OVER(PARTITION BY gender) as avg_salary
FROM parks_and_recreation.employee_demographics as edem
JOIN parks_and_recreation.employee_salary as esal
	ON edem.employee_id = esal.employee_id
;

-- ROLLING TOTAL: Start at a value and add on subsequent rows based on your partition
SELECT edem.employee_id, edem.first_name, edem.last_name, gender, esal.salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY edem.employee_id) as rolling_total
FROM parks_and_recreation.employee_demographics as edem
JOIN parks_and_recreation.employee_salary as esal
	ON edem.employee_id = esal.employee_id
;

-- ROW NUMBER, RANK and DENSE RANK: They are like an aggregate function
SELECT edem.employee_id, edem.first_name, edem.last_name, gender, esal.salary,
#ROW_NUMBER() OVER() as row_num
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) as row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) as rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) as dense_rank_num
FROM parks_and_recreation.employee_demographics as edem
JOIN parks_and_recreation.employee_salary as esal
	ON edem.employee_id = esal.employee_id
;




