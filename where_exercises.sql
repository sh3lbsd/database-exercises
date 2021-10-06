USE employees;
DESCRIBE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');
