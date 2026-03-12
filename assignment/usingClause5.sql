select first_name || ' ' || last_name as employee_name,  department_name from employees 
join departments using (department_id ) where department_id = 50;