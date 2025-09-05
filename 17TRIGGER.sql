-- #17. TRIGGER: Block of code that executes when an EVENT TAKES PLACE in a specific table

DELIMITER $$
CREATE TRIGGER emp_inserted
	AFTER INSERT ON parks_and_recreation.employee_salary #trigger activates when a row is created in employee_salary table
    FOR EACH ROW 
    BEGIN
		INSERT INTO parks_and_recreation.employee_demographics (employee_id, first_name, last_name)
        VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
    END $$
DELIMITER ;


INSERT INTO parks_and_recreation.employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (14, 'John', 'Doe', 'Intern', 100000, 69);

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.employee_demographics;
