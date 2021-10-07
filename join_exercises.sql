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
WHERE dm.to_date LIKE '9%'
ORDER BY dept_name;

# class example
# SELECT dept_name
# AS 'Department Name', CONCAT(first_name, ' ', last_name)
# AS 'Department Manager'
# FROM departments d
# JOIN dept_manager dm
# ON d.dept_no = dm.dept_no
# JOIN employees e
# ON dm.emp_no = e.emp_no
# WHERE to_date >= NOW()
# ORDER BY dept_name;

# nico's exercise
# select dept_name
# as 'Department Name', concat(first_name, ' ', last_name)
# as 'Department Manager'
# from employees
# as e
# inner join dept_manager as dm on e.emp_no = dm.emp_no
# inner join departments as d on d.dept_no = dm.dept_no
# where dm.to_date = '9999-01-01'
# order by dept_name;


# Find the name of all departments currently managed by women.
SELECT d.dept_name
AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name)
AS 'Department Manager'
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%'
AND e.gender = 'F'
ORDER BY dept_name;

# nico's solution
select dept_name
as 'Department Name', concat(first_name, ' ', last_name)
as 'Department Manager'
from employees as e
inner join dept_manager as dm on e.emp_no = dm.emp_no
inner join departments as d on d.dept_no = dm.dept_no
where gender like 'F' and dm.to_date = '9999-01-01'
order by dept_name;

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

# nico's solution
# select title as 'title', count(t.emp_no) as 'Total' from titles as t
#                                                              inner join dept_emp as de on t.emp_no = de.emp_no
#                                                              inner join departments as d on d.dept_no = de.dept_no
# where d.dept_name = 'Customer Service' and de.to_date = '9999-01-01' and t.to_date = '9999-01-01'
# group by title;

# javier's solution
# SELECT title, COUNT(title)
# FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
# JOIN departments d ON de.dept_no = d.dept_no
# WHERE d.dept_name = 'Customer Service'
# AND t.to_date = '9999-01-01'
# AND de.to_date = '9999-01-01'
# GROUP BY t.title;


# Bonus Find the names of all current employees, their department name, and their current manager's name.

