select e.first_name || ' ' || e.last_name as employee_name ,
e.salary, d.department_name
from employees e 
inner join departments d on e.department_id=d.department_id 
where e.salary > 5000;
