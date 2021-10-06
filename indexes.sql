USE employees;

SHOW INDEXES FROM employees;

DESCRIBE current_dept_emp;
SHOW INDEX FROM current_dept_emp FROM employees;

DESCRIBE departments;
SHOW INDEX FROM departments FROM employees;

DESCRIBE dept_emp;
SHOW INDEX FROM dept_emp FROM employees;

DESCRIBE dept_emp_latest_date;
SHOW INDEX FROM dept_emp_latest_date FROM employees;

DESCRIBE dept_manager;
SHOW INDEX FROM dept_manager FROM employees;

DESCRIBE employees;
SHOW INDEX FROM employees FROM employees;

DESCRIBE salaries;
SHOW INDEX FROM salaries FROM employees;

DESCRIBE titles;
SHOW INDEX FROM titles FROM employees;


USE codeup_test_db;

ALTER TABLE albums ADD CONSTRAINT unique_artist_album UNIQUE (artist, name);

# ALTER TABLE albums ADD UNIQUE unique_artist_album (artist, name);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard rock');