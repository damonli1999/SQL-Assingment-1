-- 1. Query for how many actors with last name Wahlberg
select last_name
from actor 
where last_name like 'Wahlberg'

-- 2. Query for how many payments were made between 3.99 and 5.99
select amount
from payment 
where amount between 3.99 and 5.99
order by amount desc

-- 3. Query for what film does the store have the most
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc


-- 4. Query for how many customers with last name William
select last_name
from customer
where last_name like 'William'

-- 5. Query for store employee id who sold the most rentals
select staff_id, count(rental_id) as rental 
from rental
group by staff_id 
order by rental desc

-- 6. Query for how many district names there are 
select * from 

-- 7. What film has the most actors
select film_id, count(actor_id) as actor
from film_actor
group by film_id 
order by actor desc

-- 8. From store_id, how many customers have the last name ending with 'es'
select last_name, count(last_name) as name
from customer
where last_name like '_%es'
group by last_name 
order by name

-- 9. How many payment amounts (4.99, 5.99 etc) had number of rentals above 250
-- for customers with id # 380 - 430
-- Use group by and having > 250
select amount, count(rental_id)
from payment
where customer_id between 380 and 430
group by amount having count(rental_id) > 250


-- 10. How many rating categories are there and which has the most movies total
select rating, count(rating)
from film
group by rating 
order by count(rating) desc





