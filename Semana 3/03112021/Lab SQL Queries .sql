use sakila;

# Get release years.
select distinct release_year from sakila.film;

# Get all films with ARMAGEDDON in the title.
select * from film where title LIKE '%ARMAGEDDON%';

# Get all films which title ends with APOLLO.
select * from film where title LIKE '%APOLLO';

# Get 10 the longest films.
select title, length
from film
order by length desc
limit 10;
select max(length) as max_duration from film;

# How many films include Behind the Scenes content?
select COUNT(distinct title, special_features)
from film
where special_features like ('%Behind the Scenes');

# Drop column picture from staff.
alter table staff
drop column picture;

# A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
insert into staff (first_name, last_name, address_id, store_id, username)
values ('TAMMY', 'SANDERS','1','1','user');

# Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
# You can use current date for the rental_date column in the rental table. 
# Hint: Check the columns in the table rental and see what information you would need to add there. 
# You can query those pieces of information.
# For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

SHOW COLUMNS from rental;
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
select current_date from sakila.rental;
select rental_id from sakila.rental;
select inventory_id from sakila.rental;
select inventory_id from sakila.rental;
select staff_id from sakila.rental;
select MAX(rental_id) from sakila.rental;

insert into rental (rental_id, rental_date, inventory_id, customer_id, staff_id)
values ('16050', '20211103','367','130','1');

# Delete non-active users, but first, create a backup table deleted_users to store customer_id, email, 
# and the date for the users that would be deleted. Follow these steps:
#Check if there are any non-active users
#Create a table backup table as suggested
#Insert the non active users in the table backup table
#Delete the non active users from the table customer

CREATE TABLE deleted_user LIKE customer;
INSERT deleted_user SELECT * FROM customer where active=0;

delete from customer where active=0;









