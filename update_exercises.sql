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

USE codeup_test_db;

SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = 1800 /*subtracting the original number by 100 will only work for functions apparently*/
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

-- mysql -u codeup_test_user -p < update_exercises.sql;
/* ok...when i added notes telling me this is 'before' and this is 'after' the update, when running my code it would read 'before' and 'after' (even though it was commented) and returned an error. Every other comment works fine...Noted
   UPDATE: the problem weren't the notes themselves, I was using command / to comment and it would add the -- automatically, but an actual comment is "/*"
 */