select d.department_name ,l.city 
from departments d , locations l 
where d.location_id = l.location_id;