SELECT c.country_name, l.city
FROM locations l
RIGHT JOIN countries c
ON l.country_id = c.country_id;