# Review the tables in the database.
show tables from sakila;

# Explore tables by selecting all columns from each table or using the in built review features for your client.
select * from actor;
select * from address;
select * from category;
select * from city;
select * from country;

# Select one column from a table. Get film titles.
select title from film;

# Select one column from a table and alias it. Get unique list of film languages under the alias language. 
#Note that we are not asking you to obtain the language per each film, 
#but this is a good time to think about how you might get that information in the future.
select distinct original_language_id as language from film;

# 5.1 Find out how many stores does the company have?
select count(DISTINCT store_id)
 from store;

# 5.2 Find out how many employees staff does the company have?
select count(DISTINCT staff_id)
 from staff;
 
# 5.3 Return a list of employee first names only?
  select first_name
  from staff;
  
# Select all the actors with the first name ‘Scarlett’.
select 'Scarlett' from actor;

# How many films (movies) are available for rent and how many films have been rented?
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental_rate;

# What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max('movie duration') as max_duration
from film;
select min('movie duration') as min_duration
from film;

# What's the average movie duration expressed in format (hours, minutes)?
select avg (((length/60)+(length %60) / 100)
 
# How many distinct (different) actors' last names are there?
select count(distinct(last_name)) as 'last names' from actor;

# Since how many days has the company been operating (check DATEDIFF() function)?
select datediff(max(rental_date), min(rental_date)) as days_operating from rental;

# Show rental info with additional columns month and weekday. Get 20 results.
SELECT *,
date_format(convert(substring_index(rental_date,' ',1), date), "%w") as weekdayno,
date_format(convert(substring_index(rental_date,' ',1), date), "%m") as month
FROM rental
limit 20;

# Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select*,
 case
 when weekday(rental_date) >=6 then 'weekend'
 else 'workday'
 end
 as day_type
 from rental
 end;
 
# How many rentals were in the last month of activity?
select max(rental_date) from rental;
select count(*) from rental
where rental_date like '2006-02%'










