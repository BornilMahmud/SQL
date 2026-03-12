select e.first_name || ' '|| e.last_name as employee_name , j.job_title
from employees e , jobs j
where e.job_id = j.job_id;