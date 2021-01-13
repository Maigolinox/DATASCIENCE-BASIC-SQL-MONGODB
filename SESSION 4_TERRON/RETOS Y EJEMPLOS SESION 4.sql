CREATE DATABASE IF NOT EXISTS TerronVictor;
DROP DATABASE IF EXISTS TerronVictor;
USE TerronVictor;
CREATE TABLE users (
   id INT PRIMARY KEY, 
   genero VARCHAR(1), 
   edad INT,
   ocup INT,
   cp VARCHAR(20)
);
DROP TABLE users;
SELECT *
FROM users
LIMIT 10;
CREATE TABLE IF NOT EXISTS movies(
MovieID INT PRIMARY KEY,
Title varchar(25),
Genres varchar (25)
);
CREATE TABLE IF NOT EXISTS ratings(
UserID INT PRIMARY KEY,
MovieID INT,
Rating INT,
Timestamp INT
);
SELECT * FROM movies;
CREATE TABLE IF NOT EXISTS ratings (
   userid INT, 
   movieid INT, 
   rating INT, 
   time_stamp BIGINT,
   FOREIGN KEY (userid) REFERENCES users(id),
   FOREIGN KEY (movieid) REFERENCES movies(id)
);
INSERT INTO users (id,genero,edad,ocup,cp) VALUES (7000,'F',25,20,'03100');   
SELECT *
FROM movies
LIMIT 10;

SELECT *
FROM ratings
LIMIT 10;
INSERT INTO movies(MovieID,title,genres) VALUES (5000,'Avengers', 'Adventures');