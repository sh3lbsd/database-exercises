use employees;

# SELECT * FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name ASC, last_name DESC;
#
# SELECT * FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name, last_name;
#
# SELECT * FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY last_name, first_name;
#
# SELECT * FROM employees
# WHERE last_name LIKE '%e%';
#
# SELECT * FROM employees
# WHERE last_name LIKE '%e%'
# ORDER BY emp_no;
#
# SELECT * FROM employees
# WHERE last_name LIKE '%e%'
# ORDER BY last_name DESC;
#
# SELECT * FROM employees
# WHERE last_name LIKE '%e%'
# ORDER BY emp_no DESC;





SELECT CONCAT(first_name,' ',last_name) FROM employees
WHERE last_name LIKE 'e%e';

SELECT * FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *, datediff(NOW(), hire_date)
FROM employees
WHERE birth_date LIKE '%12-25'
  AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;