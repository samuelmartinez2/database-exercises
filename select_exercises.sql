USE codeup_test_db;

SELECT '---Pink Floyd album names---' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT '---Sgt. Pepper"s Lonely Hearts Club Band release date---' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper"s Lonely Hearts Club Band';

SELECT '---genre from Nevermind---' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT '---albums released in the 90s---' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT '---albums with less then 20 mil sales---' AS 'Info';
SELECT name FROM albums WHERE sales < '20';

SELECT '---ROCK ALBUMS---' AS 'Info';
SELECT name FROM albums WHERE genre = 'Rock';

SELECT * FROM albums WHERE id = 1;

