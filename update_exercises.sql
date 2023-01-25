USE codeup_test_db;

select album_name as 'Albums' from albums;
select album_name as 'Albums released before 1980' from albums where release_date < 1980;
select album_name as 'Albums by Michael Jackson' from albums where artist_name = 'Michael Jackson';

update albums set sales = sales*10;
select * from albums;
update albums set release_date = 1800 where release_date < 1980;
select * from albums where release_date < 1980;
update albums set artist_name = 'Peter Jackson' where artist_name = 'Michael Jackson';
select * from albums where artist_name = 'Peter Jackson';