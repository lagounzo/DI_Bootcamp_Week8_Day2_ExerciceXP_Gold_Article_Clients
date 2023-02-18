-- DAY 2 GOLD DATABASE DVDRENTAL

/*Vous avez été embauché pour garder votre cousin et vous voulez trouver quelques films qu'il puisse regarder avec vous.
Découvrez combien de films il y a pour chaque classement.*/
-- rating = classement
SELECT rating, COUNT(*) as some_film
FROM film
GROUP BY rating;

/*Obtenez une liste de tous les films classés G ou PG-13.
Filtrez davantage cette liste : recherchez uniquement les films qui durent moins de 2 heures et dont
le prix de location (rental_rate) est inférieur à 3,00. Triez la liste par ordre alphabétique.*/

SELECT * FROM film
WHERE rating IN ('G', 'PG-13') AND length < 90 AND rental_rate < 3.00
ORDER BY title ASC;

/*Recherchez un client dans la table des clients et 
remplacez ses coordonnées par vos coordonnées à l'aide de SQL UPDATE.*/
SELECT * FROM customer
UPDATE customer
 SET first_name = 'NZO' , last_name = 'LAGOU' , email = 'nzolagou@gmail.com'
 WHERE customer_id = 90;

/*Trouvez maintenant l'adresse du client et utilisez UPDATE pour remplacer 
 l'adresse par votre adresse (ou créez-en une).*/
 
 SELECT address_id FROM customer
 WHERE first_name = 'NZO'
 UPDATE address
 SET address = 'Boulevard Lagou'
 WHERE address_id = 94;
 
