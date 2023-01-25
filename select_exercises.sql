USE codeup_test_db;

SELECT album_name AS 'Albums by Pink Floyd' FROM albums WHERE artist_name = 'Pink Floyd';
SELECT release_date AS 'Release Date for Sgt Peppers Lonely Hearts Club Band' FROM albums WHERE id = 28;
SELECT artist_name AS 'Artist', album_name AS 'Albums released between 1990 and 1999'FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT artist_name AS 'Artist', album_name AS 'Album' FROM albums WHERE sales < 20;
SELECT artist_name AS 'Artist', album_name AS 'Album' FROM albums WHERE genre = 'Rock';