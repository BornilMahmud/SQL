select first_name || ' '|| last_name as employees_name , job_title
from employees join jobs using (job_id);