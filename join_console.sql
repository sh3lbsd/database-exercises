USE employees;
SELECT COUNT(emp_no) FROM salaries;
SELECT COUNT(emp_no) FROM employees;

# Join or Inner Join, specifically Equijoin

# SELECT employees.emp_no, CONCAT(first_name, ' ', last_name) AS 'Full Name', salary, from_date, to_date FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name)
AS 'Full Name', s.salary, s.from_date, s.to_date
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

# Left Join

CREATE DATABASE join_test_db;

USE join_test_db;

# CREATE TABLE roles (
#        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#        name VARCHAR(100) NOT NULL,
#        PRIMARY KEY (id)
# );

# CREATE TABLE users (
#        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#        name VARCHAR(100) NOT NULL,
#        email VARCHAR(100) NOT NULL,
#        role_id INT UNSIGNED DEFAULT NULL,
#        PRIMARY KEY (id),
#        FOREIGN KEY (role_id) REFERENCES roles (id)
# );

# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#          ('bob', 'bob@example.com', 1),
#          ('joe', 'joe@example.com', 2),
#          ('sally', 'sally@example.com', 3),
#          ('adam', 'adam@example.com', 3),
#          ('jane', 'jane@example.com', null),
#          ('mike', 'mike@example.com', null);

SELECT * FROM roles;

# SELECT users.name, roles.name FROM roles JOIN users ON roles.id = users.role_id;

# Left join shows rows in the left table that have no match in the right table.
# If I say `users LEFT JOIN roles`, users is the left table and roles is the right table

# Left join:
# MySQL, go through the users table, find all the role_id values, for each role_id value, go through the roles table and try to find matching id values. When you find a match, retrieve the values of the name columns for me. (So far, that's just the same as a regular join). Also, retrieve any names from the users table (that is, the left table) that have no match in the right table, and display those too.

SELECT users.name, roles.name FROM users LEFT JOIN roles ON users.role_id = roles.id;

# Right join:
# MySQL, go through the users table, find all the role_id values, for each role_id value, go through the roles table and try to find matching id values. When you find a match, retrieve the values of the name columns for me. (So far, that's just the same as a regular join). Also, retrieve any names from the roles table (that is, the right table) that have no match in the left table, and display those too.

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

INSERT INTO users (name, email, role_id)
VALUES
    ('shelby', 'shelby@example.com', 2),
    ('kristen', 'kristen@example.com', 2),
    ('sebastian', 'sebastian@example.com', 2),
    ('oj', 'oj@example.com', null);

SELECT users.name, roles.name
FROM roles
JOIN users ON roles.id = users.role_id;
SELECT users.name, roles.name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

INSERT INTO roles (name) VALUE ('agent');

SELECT * FROM roles;

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

UPDATE users
SET role_id = 5
WHERE name = 'oj';

SELECT roles.name
AS role, COUNT(*)
AS 'users with role'
FROM users
RIGHT JOIN roles on roles.id = users.role_id
GROUP BY roles.name
ORDER BY COUNT(users.name)
DESC;
