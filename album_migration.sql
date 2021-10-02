USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
            id INT UNSIGNED AUTO_INCREMENT,
            artist VARCHAR(128) NOT NULL,
            name VARCHAR(128) NOT NULL,
            release_date SMALLINT NOT NULL,
            sales FLOAT (6,2) NOT NULL,
            genre VARCHAR(128) NOT NULL,
            PRIMARY KEY (id)
);