--Selecciona las columnas film_id y title de la tabla film.
SELECT film_id , title  FROM film ;

--Selecciona 5 filas de la tabla film, obteniendo todas las columnas.
select * from film limit 5;

--Selecciona filas de la tabla film donde film_id sea menor que 4.
select * from film where film_id < 4

--Selecciona filas de la tabla film donde el rating sea PG o G.
select * from film where rating in ( 'PG','G')

--Selecciona filas de la tabla actor donde el nombre sea Angela, Angelina o Audrey usando IN.
select * from actor where first_name where in ( 'Angela','Angelina','Audrey')

--Obtén una lista de actores con el nombre Julia.
select first_name from actor where first_name where = 'Julia'

--Obtén una lista de actores con los nombres Chris, Cameron o Cuba.
select first_name  from actor where first_name where in ( 'Chris', 'Cameron','Cuba')

--Selecciona la fila de la tabla customer para el cliente con el nombre Jamie Rice.
select * from customer where first_name = 'Jamie' and last_name = 'Rice'

--Selecciona el monto y la fecha de pago de la tabla payment donde el monto pagado sea menor a $1.
select amount, payment_date from payment where amount < 1

--¿Cuáles son las diferentes duraciones de alquiler permitidas por la tienda?
select DISTINCT RENTAL_DURATION from film 

--Ordena las filas en la tabla city por country_id y luego por city.
select * from city order by country_id , city

--¿Cuáles son los ID de los últimos 3 clientes que devolvieron un alquiler?
select * from rentale limit 3 order by return_date desc;

--¿Cuántas películas tienen clasificación NC-17? ¿Cuántas tienen clasificación PG o PG-13?
select c.name, count(*) from film_category fc
inner join category c on fc.category_id = c.category_id
where c.name in ('NC-17','PG','PG-13')
group by c.name


--¿Cuántos clientes diferentes tienen registros en la tabla rental?
select customer_id , count(*) from rental  group by customer_id 

--¿Hay algún cliente con el mismo apellido?
select last_name , COUNT(*) from customer group by last_name HAVING COUNT(*) > 1

--¿Qué película (id) tiene la mayor cantidad de actores?
select film_id, actor_id, COUNT(*) as 'cantidad actores'
from film_actor 
limit 1
group by film_id, actor_id
order by 3 desc

--¿Qué actor (id) aparece en la mayor cantidad de películas?
select actor_id, COUNT(film_id) as 'cantidad actores'
from film_actor 
limit 1
group by  actor_id 
order by 3 desc

--Cuenta el número de ciudades para cada country_id en la tabla city. Ordena los resultados por count(*).
select country_id,  count(city_id) from city group by country_id order by 1

--¿Cuál es la tarifa de alquiler promedio de las películas? ¿Puedes redondear el resultado a 2 decimales?
select * from 

--Selecciona los 10 actores que tienen los nombres más largos (nombre y apellido combinados).