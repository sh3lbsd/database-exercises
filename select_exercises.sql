USE codeup_test_db;

SELECT 'Pink Floyd Albums' AS 'Query One';

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'SGT. Peppers''s Lonley Hearts Club BAnd was released';

SELECT 'The genre for Nevermind' AS 'Query Three';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990''s'AS 'Query Four';

SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT * FROM albums WHERE sales < 20;

SELECT 'All Rock Albums' AS 'Query Six';

SELECT * FROM albums WHERE genre = 'Rock';