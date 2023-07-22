CREATE TABLE directors (
  director_id INT PRIMARY KEY,
  director_name VARCHAR(20)
 );


CREATE TABLE genres(
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(20)
 );

 
 CREATE TABLE movies (
  movie_id INT PRIMARY KEY,
  title VARCHAR(20) UNIQUE,
  release_year VARCHAR(4),
  director_id INT NOT NULL,
   FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

 CREATE TABLE movie_genres(
   movie_id INT NOT NULL,
   genre_id INT NOT NULL,
   FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
   FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
 );
 
 INSERT INTO genres VALUES (1001,'Action'),(1002,'Horror'),(1003,' Triller'),(1004,'Crime'),(1005,'Drama'),(1006,'Comedy');
   
 INSERT INTO directors VALUES (1000, 'Amar Kaushik'),(1001,'Venkat Prabhu'),(1002,'Karthik Varma Dandu'),(1003,'Sukumar'),
(1004,'Rajkumar Hirani'),(1005,'Hanu Raghavapudi'),(1006,'Prashanth Neel'),(1007,'S.S.Rajamouli');
  
 INSERT INTO movies VALUES ( 1, 'Bhediya', '2023', 1000),(2, 'Custody', '2023' , 1001),(3, 'Virupaksha', '2023', 1002), 
(4, 'Pushpa', '2022', 1003), (5, '3 Idiots', '2009', 1004),(6, 'Sita Ramam','2022',1005),(7, 'Ugram','2023',1006),(8,'RRR','2022',1007),(9,'Bahunali-1','2015',1007);
   
 INSERT INTO movie_genres VALUES (1,1002),(2,1001),(3,1003),(4,1004),(5,1006),(6,1005),(7,1003),(8,1005),(9,'1001');

/*Queries*/

1. select title,director_name from movies join directors on
   movies.director_id=directors.director_id;

2. select title,release_year,director_name from movies join directors on
   movies.director_id=directors.director_id;

3. select director_name,title from movies join directors on 
   movies.director_id=directors.director_id
   group by director_name;

4. select title,release_year,director_name from movies join directors on
   movies.director_id=directors.director_id
   group by director_name;

5. select title,genre_name from movies join movie_genres on
   movies.movie_id=movie_genres.movie_id
   group by genre_name;
 



 