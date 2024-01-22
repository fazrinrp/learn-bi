-- APPLYING COUNT
-- How many departments are there in the “employees” database?
SELECT COUNT(DISTINCT dept_no)
FROM departments;

-- APPLYING SUM
-- What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?
SELECT SUM(salary)
FROM salaries
WHERE from_date > "1997-01-01";

-- APPLYING MIN - MAX
-- Which is the lowest employee number in the database?
SELECT MIN(emp_no)
FROM employees;
-- Which is the highest employee number in the database?
SELECT MAX(emp_no)
FROM employees;

-- APPLYING AVG
-- What is the average annual salary paid to employees who started after the 1st of January 1997?
SELECT AVG(salary)
FROM salaries
WHERE from_date > "1997-01-01";

-- APPLYING ROUND
-- Round the average amount of money spent on salaries for all contracts that started after 
-- the 1st of January 1997 to a precision of cents.
SELECT ROUND(AVG(salary), 2)
FROM salaries
WHERE from_date > "1997-01-01";
