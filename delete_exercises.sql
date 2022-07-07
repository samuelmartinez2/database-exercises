USE codeup_test_db;

SELECT '---albums released after 1991---' AS '';
DELETE FROM albums WHERE release_date > 1991;

SELECT '---DISCO albums---' AS '';
DELETE FROM albums WHERE genre = 'Disco';

SELECT '---albums by Whitney Houston---' AS '';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;