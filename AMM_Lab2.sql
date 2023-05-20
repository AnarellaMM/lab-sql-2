use sakila;

select * from sakila.actor
where first_name = 'Scarlett';

select * from sakila.actor
where last_name = 'Johansson';

-- 3. how many films are available?
select count(inventory_id) from inventory;
 -- 4581 total movies for rent

select count(DISTINCT film_id) as 'Different films' from inventory;
 -- 958 films in the catalog
 
 -- 4.How many films have been rentend?
 select count(rental_id) from rental;
  -- 16044 Films have been rentend
  
  -- 5. What is the shortest and longest rental period?
select max(rental_duration) from film;
         -- 7 is the longest rental duration
select min(rental_duration) from film;
        -- 3 is the minimum rental duration
        
-- 6.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as 'max_duration' from film;
     -- 185 is the max duration
select min(length) as 'min_duration' from film;
    -- 46 is the min duration
    
-- 7.What's the average movie duration?
select avg(length) as AverageDurationn from film;
       -- 115.2720 is the avarege durationn
       
-- 8.What's the average movie duration expressed in format (hours, minutes)?
select time_format(convert(floor(avg(length)), time),'%i:%s') from film; -- 01:15

-- 9. How many movies longer than 3 hours?
select count(length) from film
where length > 180
order by length desc;
      -- 39 movies al longer than 3hours _ 180 minutes
      
-- 10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(concat(substring(first_name,1,1),lower(substring(first_name,2,length(first_name)))),'', upper(last_name),'-', lower(email)) 
as customerDetails from customer;

-- 11. What's the length of the longest film title?
	-- we need to find the longest title in TITLES and the it's length
select length(title), max(length) as 'LongestFilm' from film;
 -- I don't think is right, but it is what it came, would be great to check it next day at class
-- Length Title 16 - longest film 185



