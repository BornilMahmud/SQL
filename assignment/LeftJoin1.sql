select d.department_name , 
e.first_name || ' ' || e.last_name as employee_name
from employees e left join departments d 
on e.department_id = d.department_id ;