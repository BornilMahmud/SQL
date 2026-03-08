select e.first_name || ' ' || e.last_name as employees_name , department_name 
from employees e , departments d 
where e.department_id =d.department_id;