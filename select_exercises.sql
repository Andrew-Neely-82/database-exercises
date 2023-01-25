USE codeup_test_db;

SELECT album_name AS 'Albums by Pink Floyd' from albums where artist_name = 'Pink Floyd';
SELECT release_date AS 'Release Date for Sgt Peppers Lonely Hearts Club Band' from albums where id = 28;
SELECT artist_name AS 'Artist', album_name AS 'Albums released between 1990 and 1999'from albums where release_date BETWEEN 1990 and 1999;
SELECT artist_name AS 'Artist', album_name AS 'Album' from albums where sales < 20;
SELECT artist_name AS 'Artist', album_name AS 'Album' FROM albums WHERE genre = 'Rock';