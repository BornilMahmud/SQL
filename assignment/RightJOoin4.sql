SELECT l.location_id, l.city
FROM departments d
RIGHT JOIN locations l
ON d.location_id = l.location_id
WHERE d.department_id IS NULL;