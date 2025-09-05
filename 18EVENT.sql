-- #18. EVENT: An event takes place when IT IS SCHEDULED (scheduled automator)

DELIMITER $$
CREATE EVENT salary_hike
ON SCHEDULE EVERY 1 MONTH
STARTS CURRENT_TIMESTAMP
DO
BEGIN 
	UPDATE parks_and_recreation.employee_salary
    SET salary = salary * 1.10;
END $$
DELIMITER ;

SELECT *
FROM parks_and_recreation.employee_salary;

# If the event creation didn't work:
SHOW VARIABLES; 
SHOW VARIABLES LIKE '%event%';
SHOW VARIABLES LIKE 'event_scheduler'; #should be ON
