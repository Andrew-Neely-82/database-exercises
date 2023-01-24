USE codeup_test_db;

SELECT 'All albums in your table.' AS 'Album Info';
SELECT album_name, sales FROM albums;
UPDATE albums
SET sales = sales * 10
WHERE sales;
SELECT 'Album Sales' AS 'Album Info';
SELECT album_name, sales FROM albums;


SELECT 'All albums released before 1980' AS 'Album Info';
SELECT album_name, release_date FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT 'All albums released before 1880' AS 'Album Info';
SELECT album_name, release_date FROM albums WHERE release_date < 1880;

SELECT 'All albums by Michael Jackson' AS 'Album Info';
SELECT album_name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'All albums by Peter Jackson' AS 'Album Info';
SELECT album_name, artist FROM albums WHERE artist = 'Peter Jackson';