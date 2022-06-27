use sakila;


-- 1. Find out the number of documentaries with deleted scenes.

select count(*) as "Number of Documentaries with deleted scenes" from film
inner join film_category on film.film_id = film_category.film_id
inner join category on category.category_id = film_category.category_id
where film.special_features = 'Deleted Scenes' and category.name = 'Documentary';


-- 2. Find out the number of sci-fi movies rented by the store managed by Jon Stephens.

select count(film_category.film_id)as no_stf_movie from film_category
inner join category on film_category.category_id=category.category_id
inner join inventory on film_category.film_id=inventory.film_id
inner join store on store.store_id=inventory.store_id
inner join staff on staff.staff_id=store.manager_staff_id
where category.name='sci-fi' and staff.first_name='jon' and staff.last_name='stephens';


-- 3. Find out the total sales from Animation movies.

select category.name,sum(payment.amount) as total_sales from payment
inner join rental on payment.rental_id=rental.rental_id
inner join inventory on rental.inventory_id= inventory.inventory_id 
inner join film on inventory.film_id=film.film_id
inner join film_category on film.film_id= film_category.film_id
inner join category on category.category_id = film_category.category_id
where category.name='Animation'
group by category.name 
order by total_sales desc;

-- 4. Find out the top 3 rented category of movies by “PATRICIA JOHNSON”.

select category.name as "Top 3 rented category", count(*) as count from customer
inner join rental on rental.customer_id = customer.customer_id
inner join inventory on inventory.inventory_id = rental.inventory_id
inner join film on film.film_id = inventory.film_id
inner join film_category on film_category.film_id = film.film_id
inner join category on category.category_id = film_category.category_id
where (customer.first_name = "PATRICIA" and customer.last_name = "JOHNSON")
group by category.name 
order by count(category.name) desc
limit 3; 


-- 5. Find out the number of R rated movies rented by “SUSAN WILSON”.

select count(film.rating) as "No of R rated movies" from film
inner join inventory on film.film_id=inventory.film_id
inner join rental on rental.inventory_id=inventory.inventory_id
inner join customer on customer.customer_id=rental.customer_id
where (customer.first_name='susan' and customer.last_name='wilson') and film.rating='r';
