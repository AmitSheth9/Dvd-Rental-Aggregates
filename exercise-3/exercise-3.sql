-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(payment.amount) FROM country
INNER JOIN city ON city.country_id = country.country_id
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN customer ON address.address_id = customer.address_id
INNER JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY country.country
ORDER by avg desc
LIMIT 10