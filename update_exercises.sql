USE codeup_test_db;

-- SELECT '---All Albums---' AS 'Info';
-- SELECT * FROM albums;
-- UPDATE albums SET sales = sales * 10;
--
-- SELECT '---albums released before 1980---' AS 'Info';
-- SELECT * FROM albums WHERE release_date < 1980;
-- UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;

SELECT '---albums released in the 90s---' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

