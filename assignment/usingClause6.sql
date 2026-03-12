select first_name || ' ' || last_name as employees_name ,
department_name from employees 
join departments using (department_id)
order by department_name;