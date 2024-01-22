-- INNER JOIN
-- Extract a list containing information about all managers’ employee number,
-- first and last name, department number, and hire date. 
SELECT e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM employees e
INNER JOIN dept_manager d ON e.emp_no = d.emp_no;

-- LEFT JOIN
-- Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is
-- Markovitch. See if the output contains a manager with that name.  
SELECT e.emp_no, e.first_name, e.last_name, dm. dept_no
FROM employees e
LEFT JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE e.last_name = "Markovitch";

-- OLD TYPE SYNTAX
-- Extract a list containing information about all managers’ employee number, first and last name, department number, 
-- and hire date. Use the old type of join syntax to obtain the result.
SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM employees e, dept_manager dm
WHERE e.emp_no = dm.emp_no;
-- NEW JOIN SYNTAX
SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM employees e JOIN
dept_manager dm ON e.emp_no = dm.emp_no;

-- USING JOIN AND WHERE TOGETHER
-- Select the first and last name, the hire date, and the job title of all employees whose first name is
-- “Margareta” and have the last name “Markovitch”.
SELECT e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE e.first_name = "Margareta" AND e.last_name = "Markovitch";

-- USING CROSS JOIN
-- Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager
-- table and department number 9.
SELECT dm.*, d.*
FROM departments d
CROSS JOIN dept_manager dm
WHERE d.dept_no = 'd009'
ORDER BY d.dept_name;
-- Return a list with the first 10 employees with all the departments they can be assigned to.
SELECT e.*, d.*
FROM employees e
CROSS JOIN departments d
WHERE e.emp_no BETWEEN 10001 AND 10010
ORDER BY e.emp_no, d.dept_no;

-- JOIN MORE THAN 2 TABLES
-- Select all managers’ first and last name, hire date, job title, start date, and department name.
SELECT e.first_name, e.last_name, e.hire_date, t.title, t.from_date, d.dept_name
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE t.title = "Manager";

-- How many male and how many female managers do we have in the ‘employees’ database?
SELECT e.gender, COUNT(e.gender)
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY e.gender;
