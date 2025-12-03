USE SAKILA;

 -- 1.Selecciona todos los nombres de las películas sin que aparezcan duplicados.
 SELECT DISTINCT title FROM film;
 
 -- 2.Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".
 SELECT title as Peliculas_con_PG13 FROM film WHERE rating = 'PG-13';
 
 -- 3.Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.
 SELECT title as Pelicula, description as Descripcion_con_Amazing FROM film WHERE description LIKE '%amazing%';

 -- 4.Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.
 SELECT title as Peliculas_2horas FROM film WHERE length > 120;
 
 -- 5.Recupera los nombres de todos los actores.
 SELECT first_name as Nombre_Actor FROM actor;
 
 -- 6.Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
 SELECT first_name as Nombre_Actor, last_name as Apellido FROM actor WHERE last_name LIKE '%Gibson%';
 
 -- 7.Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
SELECT first_name as Nombre_Actor FROM actor WHERE actor_id BETWEEN 10 AND 20;

 -- 8.Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
SELECT title as Titulo, rating FROM film WHERE rating NOT IN ( 'R','PG-13');
 
 -- 9.Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
SELECT rating as Clasificacion, COUNT(*) AS Total_peliculas FROM film GROUP BY rating;

 -- 10.Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
 SELECT COUNT(r.rental_id) AS Total_peliculas_alquiladas, c.customer_id, c.first_name, c.last_name
 FROM customer c
 JOIN rental r ON c.customer_id = r.customer_id
 GROUP BY c.customer_id, c.first_name, c.last_name;
 
 -- 11.Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.
 SELECT COUNT(r.rental_id) AS Peliculas_alquiladas, c.name AS Categoria
 FROM rental r
 JOIN inventory i ON r.inventory_id = i.inventory_id
 JOIN film f ON f.film_id = i.film_id
 JOIN film_category fc ON fc.film_id = f.film_id
 JOIN category c ON c.category_id = fc.category_id
 GROUP BY c.name
ORDER BY Peliculas_alquiladas DESC;
 
 -- 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
 SELECT rating AS Clasificacion, AVG(length) AS Promedio_duracion FROM film GROUP BY rating;
 
 -- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
 SELECT a.first_name as Nombre, a.last_name as Apellido 
 FROM actor a
 JOIN film_actor fa ON a.actor_id = fa.actor_id
 JOIN film as f ON fa.film_id = f.film_id
 WHERE f.title LIKE '%Indian Love%'; 
 
 -- 14.Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
 SELECT title as Pelicula FROM film WHERE description LIKE '%dog%' OR description LIKE '%cat%';
 
 -- 15.Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.
 SELECT title as Pelicula from film WHERE release_year BETWEEN 2005 AND 2010;
 
 