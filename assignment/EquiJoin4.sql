select e.first_name || ' '|| e.last_name as employee_name , c.country_name
from employees e , departments d,locations l,countries c 
where e.department_id = d.department_id and
d.location_id=l.location_id and
l.country_id = c.country_id;