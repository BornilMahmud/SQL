select d.department_name , l.city 
from departments d join 
locations l on 
d.location_id = l.location_id 
where l.city 
like 'N%'; 