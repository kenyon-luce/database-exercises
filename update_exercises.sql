-- Write SELECT statements to output each of the following with a caption:
--
--     All albums in your table.
--     All albums released before 1980
--     All albums by Michael Jackson
--     After each SELECT add an UPDATE statement to:
--
--     Make all the albums 10 times more popular (sales * 10)
--     Move all the albums before 1980 back to the 1800s.
--     Change 'Michael Jackson' to 'Peter Jackson'
--     Add SELECT statements after each UPDATE so you can see the results of your handiwork.

USE codeup_test_db

SELECT 'All albums from table';
SELECT * FROM albums; --before

SELECT 'All albums from table (change sales times 10)'
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums; --after


SELECT 'All albums released before 1980';
SELECT * FROM albums WHERE release_date < 1980; --before

SELECT 'All albums released before 1980 (change into 1800s)';
UPDATE albums
SET release_date = release_date - 100;
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980; --after


SELECT 'All albums by Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson'; --before

SELECT 'All albums by Michael Jackson (change to Peter Jackson)';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'
SELECT * FROM albums WHERE artist = 'Michael Jackson'; --after

-- mysql -u codeup_test_user -p < update_exercises.sql;