# Lab | SQL Subqueries
use sakila;
#How many copies of the film Hunchback Impossible exist in the inventory system?
select count(inventory_id) as number_of_copies, film_id from film
join inventory
using (film_id)
where title = 'Hunchback Impossible'
group by film_id;


#List all films whose length is longer than the average of all the films.
select title, length
from film
where length >
(select avg(length)
from film);

# Use subqueries to display all actors who appear in the film Alone Trip.
select actor_id,first_name,last_name
from actor where actor_id in
((select actor_id
from film_actor
where film_id in(
select film_id
from film
where title='ALONE TRIP')));


# Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
# Identify all movies categorized as family films
select title as family_films
from film
where film_id in(
select film_id
from film_category
where category_id in(
select category_id
from category
where name='Family'));


