USE codeup_test_db;

SELECT album_name AS 'Albums' FROM albums;
SELECT album_name AS 'Albums released before 1980' FROM albums WHERE release_date < 1980;
SELECT album_name AS 'Albums by Michael Jackson' FROM albums WHERE artist_name = 'Michael Jackson';

UPDATE albums set sales = sales*10;
SELECT * FROM albums;
UPDATE albums set release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums set artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
SELECT * FROM albums WHERE artist_name = 'Peter Jackson';