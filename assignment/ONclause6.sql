select d.department_name , j.job_title,
e.first_name || ' ' || e.last_name as employee_name
from employees e join 
jobs j on 
e.job_id = j.job_id
join departments d on 
e.department_id = d.department_id;