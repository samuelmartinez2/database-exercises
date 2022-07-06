USE codeup_test_db;

DROP TABLE IF EXISTS albums;

USE codeup_test_db;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_first_last_name VARCHAR(100),
    release_date INT UNSIGNED NOT NULL,
    sales DECIMAL (6.2) NOT NULL,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);
