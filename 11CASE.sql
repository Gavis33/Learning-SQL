-- #11. CASE STATEMENTS:
SELECT first_name, salary,
CASE
	WHEN salary <=20000 THEN 'LOW'
    WHEN salary BETWEEN 20000 AND 50000 THEN 'MEDIUM'
    WHEN salary >= 50000 THEN 'HIGH'
END AS pay
FROM parks_and_recreation.employee_salary
;

SELECT first_name, occupation, salary, dept_id,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary >= 50000 THEN salary * 1.07
END AS salary_with_bonus,
CASE
	WHEN occupation = 'Entrepreneur' THEN salary * 10    
    WHEN dept_id = 6 THEN salary * 1.1
END AS perks
FROM parks_and_recreation.employee_salary
;

SELECT * FROM parks_and_recreation.parks_departments;