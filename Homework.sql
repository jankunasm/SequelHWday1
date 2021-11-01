-- 1. How many actors with the last name "Wahlberg"?

-- Answer: 2

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';


-- 2. How many payments were made between 3.99 and 5.99?

-- Answer: 5607

SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99
ORDER BY amount ASC;


-- 3. What film does the store have the most of (search inv)?

-- Answer: 72 films tied at 8

SELECT film_id, Count(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


-- 4. How many customers with the last name "William"?

-- Answer: 0 with "William", 1 with "Williams"

SELECT last_name
FROM customer
WHERE last_name = 'William';


-- 5. What store employee (get the id) sold the most rentals?

-- Answer: Staff_id 1 sold more.

SELECT COUNT(staff_id)
FROM rental
GROUP BY staff_id;


-- 6. How many different district names are there?

-- Answer: 378

SELECT COUNT(DISTINCT district)
FROM address;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)?

-- Answer: film_id 508 at 15 actors

SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’
-- (use customer table)?

-- Answer: 13

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' and store_id = '1';


-- 9.How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 
-- 250 for customers with ids between 380 and 430? (use group by and having > 250)?

-- Answer: 3

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;


-- 10. Within the film table, how many rating categories are there? And what rating
-- has the most movies total?

-- Answer: 5 ratings, PG-13 has the most

SELECT COUNT(DISTINCT rating), COUNT(rating), rating
FROM film
GROUP BY rating;












