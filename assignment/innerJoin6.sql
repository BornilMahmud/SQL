select e.first_name || ' ' || e.last_name as employee_name, j.job_title,e.hire_date
from employees e 
inner join jobs j on e.job_id= j.job_id 
where e.hire_date > to_date ('01-jan-2020', 'DD-MM-YYYY');