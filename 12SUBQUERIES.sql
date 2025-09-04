-- SUBQUERIES: Queries within a Query

-- 1. SUBQUERIES in WHERE clause
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id 
IN (
	SELECT employee_id
    FROM parks_and_recreation.employee_salary
    WHERE dept_id = 1
)
;

-- 2. SUBQUERIES in SELECT clause
SELECT first_name, salary,
(SELECT AVG(salary)
FROM parks_and_recreation.employee_salary)
FROM parks_and_recreation.employee_salary
;

-- 3 SUBQUERIES in FROM statement
SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

#SELECT gender, AVG(`MIN(age)`)
SELECT gender, AVG(min_age)
FROM
(SELECT gender, 
AVG(age) AS avg_age, 
MIN(age) AS min_age, 
MAX(age) AS max_age, 
COUNT(age) AS gender_count
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS aggregated_table
GROUP BY gender
;