USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each
# department along with the name of the current manager for that department.
SELECT d.dept_name
AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name)
AS 'Department Manager'
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE dm.to_date
LIKE '9%'
ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name
AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name)
AS 'Department Manager'
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE dm.to_date
LIKE '9%'
AND e.gender = 'F'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(t.title)
AS Total
FROM titles as t
JOIN dept_emp as de
ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
AND YEAR(t.to_date) = '9999'
AND YEAR(de.to_date) = '9999'
GROUP BY t.title;

# Find the current salary of all current managers.
SELECT d.dept_name
AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name)
AS 'Department Manager', s.salary
AS Salary
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date
LIKE '9%'
AND s.to_date
LIKE '9%'
ORDER BY dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name.

