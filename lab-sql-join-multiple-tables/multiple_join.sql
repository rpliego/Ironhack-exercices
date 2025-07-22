-- Escribe una consulta para mostrar para cada tienda su ID de tienda, ciudad y país.

SELECT
    store.store_id,
    city.city,
    country.country
FROM store
JOIN address ON store.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id;


-- Escribe una consulta para mostrar cuánto negocio, en dólares, trajo cada tienda.

SELECT
    store.store_id,
    SUM(payment.amount) AS total_ventas
FROM payment
JOIN staff ON payment.staff_id = staff.staff_id
JOIN store ON staff.store_id = store.store_id
GROUP BY store.store_id;


-- ¿Cuál es el tiempo de ejecución promedio de las películas por categoría?

SELECT
    category.name AS categoria,
    AVG(film.length) AS promedio_duracion
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name;


-- ¿Qué categorías de películas son las más largas?

SELECT
    category.name AS categoria,
    AVG(film.length) AS promedio_duracion
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY promedio_duracion DESC;


-- Muestra las películas más alquiladas en orden descendente.

SELECT
    film.title,
    COUNT(rental.rental_id) AS veces_alquilada
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
GROUP BY film.title
ORDER BY veces_alquilada DESC;


-- Enumera los cinco principales géneros en ingresos brutos en orden descendente.

SELECT
    category.name AS categoria,
    SUM(payment.amount) AS ingresos_totales
FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY ingresos_totales DESC
LIMIT 5;


-- ¿Está "Academy Dinosaur" disponible para alquilar en la Tienda 1?

SELECT
    film.title,
    store.store_id,
    COUNT(inventory.inventory_id) AS copias_disponibles
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN store ON inventory.store_id = store.store_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
    AND rental.return_date IS NULL
WHERE film.title = 'Academy Dinosaur' AND store.store_id = 1
GROUP BY film.title, store.store_id;
