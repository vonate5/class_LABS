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


