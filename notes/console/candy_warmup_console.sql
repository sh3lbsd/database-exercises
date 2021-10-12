CREATE DATABASE candy_db;

# Create a candies table with the following columns (choose the data type most appropriate for the column):
# id (primary key)
#    name
#   price_in_cents
#   description
#   type_id (a foreign key pointing to the id column of the types table)
USE candy_db;
SHOW TABLES;
DROP TABLE IF EXISTS candy;
CREATE TABLE candy (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       price_in_cents INT NOT NULL,
       description VARCHAR(100) NOT NULL,
       types_id INT UNSIGNED,
       PRIMARY KEY (id),
       FOREIGN KEY (types_id) REFERENCES candy_types(id)
);

# Create a types table with the following columns:
#   id (primary key)
#   name
#   description
DROP TABLE IF EXISTS candy_types;
CREATE TABLE candy_types (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     name VARCHAR(75) NOT NULL,
     description VARCHAR(150) NOT NULL,
     PRIMARY KEY (id)
);

# Seed the database with the following insert statements:
INSERT INTO candy_types (name, description)
VALUES
    ('Chewing Gum', 'Great for chewing!'),
    ('Chocolate', 'Great for chocolate goodness!'),
    ('Hard Candy', 'Don''t bite too hard!'),
    ('Gummy Candy', 'Not too hard; not too soft.');


INSERT INTO candy (name, price_in_cents, description, types_id)
VALUES
    ('Doublemint Gum', 159, 'Standard chewing gum', 1),
    ('Orbit Gum', 110, 'Another standard chewing gum', 1),
    ('Hershey Bar', 210, 'Standard chocolate bar', 2),
    ('Gushers', 312, 'Nice and sour!', 4),
    ('Sour Patch Kids', 206, 'Quite sour!', 4),
    ('M&Ms', 199, 'Crunchy and chocolatey', 2);

# What is the relationship between the candies and types table?
# one-to-many

# Write a query to display the type name and candy name for all candies over 200 cents.
SELECT t.name, c.name FROM candy c
JOIN candy_types t ON c.types_id = t.id
WHERE price_in_cents > 200;
