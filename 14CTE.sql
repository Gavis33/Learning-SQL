-- CTEs (Common Table Expression):
-- CTEs allow you to define a subquery block which you can then refernce within the main query
-- CTEs are defined using the keyword "WITH"
-- We can use a CTE immediately after we create it (within the same query)
-- Advantage of CTEs over SUBQUERIES - better readability

WITH cte_example AS
(
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM parks_and_recreation.employee_demographics AS edem
JOIN parks_and_recreation.employee_salary AS esal
	ON edem.employee_id = esal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM cte_example
;

-- Demonstrating the above query using a subquery:
SELECT AVG(avg_sal)
FROM (
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM parks_and_recreation.employee_demographics AS edem
JOIN parks_and_recreation.employee_salary AS esal
	ON edem.employee_id = esal.employee_id
GROUP BY gender
) subquery_example
;

-- To use multiple CTEs:
WITH cte_example AS
(
SELECT employee_id, gender, birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
),
cte_example2 AS
(
SELECT employee_id, salary
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
)
SELECT *
FROM cte_example
JOIN cte_example2
	ON cte_example.employee_id = cte_example2.employee_id
;