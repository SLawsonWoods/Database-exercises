USE `albums_db`;

SELECT *
FROM albums;
-- 3a. 31 rows

SELECT DISTINCT artist
FROM albums;
-- 3b. 23 artists

SELECT id
FROM albums;

DESCRIBE albums;
-- 3c. primary key id


SELECT MIN(release_date)
FROM albums;
-- 3d. oldest release date 1967

SELECT MAX(release_date)
FROM albums;
-- 3d.5 recent release date 2011

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';
-- 4a. name of all Pink Floyd alubms

SELECT name, release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";
-- 4b. the year Sgt. Pepper' Lonely Hearts Club Band was released was 1967

SELECT name, genre
FROM albums
WHERE name = 'Nevermind';
-- 4c. genre for album Nevermind is Grunge, Alternative rock

SELECT name, release_date
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;
-- 4d. albums released in 1990s

SELECT name, genre
FROM albums
WHERE sales < 20;
-- 4e. albums with less than 20 mil in sales

SELECT name, genre
FROM albums
WHERE genre = 'Rock';

-- 4f. why don't these resuls include "Hard Rock" or "Progresive Rock"? Because it had different words before or after the word Rock.
