-- #16. STORED PROCEDURES: 
-- A way to save SQL codes in a way that you can reuse them again and again
-- When you save it, you can call that stored procedure and it will execute all the code that you wrote within your stored procedure
-- Helpful for storing complex queries, simplifying repetitive code and improves overall performance

# Creating a Stored Procedure
CREATE PROCEDURE high_salary()
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

# Calling the stored procedure
CALL high_salary();

# Creating a complex stored procedure (using DELIMITER)
DELIMITER $$
CREATE PROCEDURE stored_procedure2()
BEGIN
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 50000;
    SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL stored_procedure2()

-- PARAMETER: 
-- Variables that are passed as input into a stored procedure
DELIMITER $$
CREATE PROCEDURE sp_params(emp_id INT)
BEGIN 	
	SELECT *
	FROM parks_and_recreation.employee_salary
    WHERE employee_id = emp_id;
END $$
DELIMITER $$

CALL sp_params(1)