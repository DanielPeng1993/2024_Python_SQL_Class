/*subquery*/
/*母子查詢*/
/*句中句*/

SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city
FROM city
WHERE country_id = (
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);

SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';