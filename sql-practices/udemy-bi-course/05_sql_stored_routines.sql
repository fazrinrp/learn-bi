-- Create a procedure that will provide the average salary of all employees.
DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
	SELECT AVG(salary)
	FROM salaries;
END$$
DELIMITER ;

-- Create a procedure called ‘emp_info’ that uses as parameters the first and
-- the last name of an individual, and returns their employee number.
DELIMITER $$
CREATE PROCEDURE emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no integer)
BEGIN
	SELECT e.emp_no
    INTO p_emp_no
    FROM employees e
    WHERE e.first_name = p_first_name AND e.last_name = p_last_name;
END$$
DELIMITER ;

-- SQL VARIABLES
-- Create a variable, called ‘v_emp_no’, where you will store the output of the procedure you created in the last exercise.
SET @v_emp_no = 0;
-- Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name respectively.
CALL emp_info('Aruna', 'Journel', @v_emp_no);
-- Finally, select the obtained output.
SELECT @v_emp_no;

-- USER DEFINED FUNCTIONS
-- Create a function called ‘emp_info’ that takes for parameters the first and last name of an employee, and returns the salary
-- from the newest contract of that employee.
DELIMITER $$
CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
BEGIN
    DECLARE v_max_from_date date;
    DECLARE v_salary decimal(10,2);
SELECT 
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;
    
SELECT 
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;
	RETURN v_salary;
END$$

DELIMITER ;
-- Finally, select this function.
SELECT EMP_INFO('Aruna', 'Journel');
