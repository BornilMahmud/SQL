select d.department_name , 
l.city
from departments d left join locations l 
on l.location_id = d.location_id ;