# SHOW DATABASES;
#
# USE movies;
#
# SELECT title, person_name, budget, department_name
# FROM movie m
#          JOIN movie_crew mc
#               ON m.movie_id = mc.movie_id
#          JOIN person p
#               ON mc.person_id = p.person_id
#          JOIN department d
#               ON mc.department_id = d.department_id
# WHERE person_name = 'Uma Thurman'
#    OR person_name = 'Angelina Jolie'
# ORDER BY budget DESC;

USE employees;

SELECT emp_no
FROM dept_manager;

SELECT birth_date, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
);

# USE codeup_test_db;
#
# INSERT INTO preferences (person_id, album_id)
# VALUES (
#         (
#         SELECT id
#         FROM persons
#         WHERE first_name = 'Tareq'),
#         (
#         SELECT id
#         FROM albums
#         WHERE name = '1'
#         )
#     );
#
# UPDATE preferences
# SET album_id = (
#     SELECT id
#     FROM albums
#     WHERE name = 'Led Zeppelin IV'
#     )
# WHERE album_id = (
#     SELECT id
#     FROM albums
#     WHERE name = '1'
#     )
# AND person_id = (
#     SELECT id
#     FROM persons
#     WHERE first_name = 'Tareq')
# ;