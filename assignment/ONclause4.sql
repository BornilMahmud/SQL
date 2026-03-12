select e.first_name || ' ' || e.last_name as employees_name 
, e.salary , j.job_title
from employees e  
join jobs j on 
e.job_id = j.job_id 
where e.salary between 4000 and 8000 ;