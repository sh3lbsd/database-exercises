USE employees;
DESCRIBE employees;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'Z%'
ORDER BY last_name DESC
LIMIT 10;

SELECT DISTINCT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT DISTINCT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;
