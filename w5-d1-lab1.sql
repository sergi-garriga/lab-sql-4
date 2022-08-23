use sakila;

-- Get film ratings.
select distinct(rating) from film;
-- or
select film_id, title, rating from film;



-- Get release years.
select distinct(release_year) from film;
-- or
select film_id, title, release_year from film;



-- Get all films with ARMAGEDDON in the title.
select * from film where title regexp "armageddon";



-- Get all films with APOLLO in the title
select * from film where title regexp "apollo";



-- Get all films which title ends with APOLLO.
select * from film where title regexp "apollo$";



-- Get all films with word DATE in the title.
select * from film where title regexp "(date)"; -- here I don't know how to get rid off the "CandiDATE Perdition" film. 



-- Get 10 films with the longest title.
select film_id, title, length(title) as lenght_title 
from film 
order by length(title) desc 
limit 10;



-- Get 10 the longest films.
select film_id, title, length 
from film 
order by length desc 
limit 10;



-- How many films include Behind the Scenes content?
select count(*)
from film
where special_features regexp "Behind the Scenes";



-- List films ordered by release year and title in alphabetical order.
select * from film order by release_year, title asc


