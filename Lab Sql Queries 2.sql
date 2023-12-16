use sakila;
select * from actor where first_name = 'Scarlett';-- 81 124
select * from actor where last_name = 'Johansson';-- 8 64 146 
select count(*) as num_available_films from film where film_id not in (select film_id from rental where return_date is not null);-- 0
select count(*) as num_rented_films from rental;-- 16044
select min(rental_duration) as shortest_rental from film;-- 3
select max(rental_duration) as longest_rental from film;-- 7
select min(length) as min_duration from film;-- 46min
select max(length) as max_duration from film;-- 185min
select avg(length) as average_duration from film;-- 115.2720min
select concat(floor(avg(length)/60), 'h ' , avg(length) % 60, 'min') as average_duration_formatted from film;-- 1h 55.2720min
select count(*) as num_movies_longer_than_3_hours from film where length > 180;-- 39ç
select concat(first_name, ' ' , upper(last_name), ' - ' , lower(concat(first_name, '.' , last_name, '@sakilacustomer.org'))) as formatted_name_email from customer;
select max(length(title)) as longest_title_length from film;
select film_id, title from film where length(title)= (select max(length(title)) from film);