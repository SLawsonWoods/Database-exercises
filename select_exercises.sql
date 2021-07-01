USE `albums_db`;
SELECT *
FROM albums;
-- 3a. 31 rows
SELECT DISTINCT artist
FROM albums;
-- 3b. 31 artists
SELECT id
FROM albums;
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
-- 4b. the year Sgt. Pepper' Lonely Hearts Club Band was released
SELECT name, genre
FROM albums
WHERE name = 'Nevermind';
-- 4c. genre for album Nevermind
SELECT name 
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;
-- 4d. albums released in 1990s
SELECT name
FROM albums
WHERE sales < 20;
-- 4e. album with less than 20 mil in sales
-- 4f. why don't these resuls include the rock genre? because it had different words befoe or after he
