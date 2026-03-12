SELECT d.department_name, l.city
FROM departments d
FULL JOIN locations l
ON d.location_id = l.location_id;