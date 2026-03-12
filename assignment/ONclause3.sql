select e.first_name || ' ' || e.last_name as employees_name 
, d.department_name
from employees e  
join departments d on 
e.department_id = d.department_id 
where d.department_id = 90 ;