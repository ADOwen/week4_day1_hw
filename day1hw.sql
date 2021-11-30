-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name,
    COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;
-- 2. How many payments were made between $3.99 and $5.99?
SELECT amount,
    COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount
ORDER BY amount ASC;
-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id,
    count(film_id) AS stock
FROM inventory
GROUP BY film_id
ORDER BY count(film_id) DESC;
-- 4. How many customers have the last name ‘William’?
SELECT last_name,
    COUNT(last_name)
FROM customer
WHERE last_name = 'William'
GROUP BY last_name;
-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id,
    COUNT(staff_id) AS rentals_sold
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;
-- 6. How many different district names are there?
-- couldn't find districts on any tables? - Allan
SELECT COUNT(DISTINCT city)
FROM city;
-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id,
    COUNT(film_id) AS actors
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name,
    store_id
FROM customer
WHERE last_name LIKE '%es'
    AND store_id = 1;
-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
-- - - with ids between 380 and 430 ?
SELECT customer_id,
    COUNT(rental_id) as number_rentals
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING COUNT(rental_id) > 250;
-- 10. Within the film table, how many rating categories are there? And what rating has the most moviest total?
SELECT DISTINCT rating,
    COUNT(rating) as total_movies
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;