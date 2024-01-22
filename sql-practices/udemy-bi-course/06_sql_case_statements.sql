-- THE CASE STATEMENT

-- Obtain a result set containing the employee number, first name, and last name of all employees with a number higher than 109990.
-- Create a fourth column in the query, indicating whether this employee is also a manager, according to the data provided in
-- the dept_manager table, or a regular employee. 
SELECT e.emp_no, e.first_name, e.last_name, 
		CASE
        WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
        END AS is_manager
FROM employees e
LEFT JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE e.emp_no > 109990;

-- Extract a dataset containing the following information about the managers: employee number, first name, and last name. 
-- Add two columns at the end – one showing the difference between the maximum and minimum salary of that employee,
-- and another one saying whether this salary raise was higher than $30,000 or NOT.
SELECT e.emp_no, e.first_name, e.last_name,
	(MAX(s.salary) - MIN(s.salary)) AS diff,
	CASE WHEN (MAX(s.salary) - MIN(s.salary)) > 30000 THEN "salary raise was higher than $30,000"
    ELSE "salary raise was NOT higher than $30,000" END AS salary_raise
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
LEFT JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY e.emp_no;

-- Extract the employee number, first name, and last name of the first 100 employees, and add a fourth column, called
-- “current_employee” saying “Is still employed” if the employee is still working in the company, or 
-- “Not an employee anymore” if they aren’t.
SELECT e.emp_no, e.first_name, e.last_name,
	CASE WHEN MAX(d.to_date) > SYSDATE()
    THEN "Is still employed" ELSE "Not an employee anymore" END AS current_employee
FROM employees e
JOIN dept_emp d ON e.emp_no = d.emp_no
GROUP BY e.emp_no
LIMIT 100;