select e.first_name || ' '|| e.last_name as employee_name ,
d.department_name from employees e ,departments d, employees m 
where e.department_id = d.department_id and 
d.manager_id= e.employee_id and 
e.department_id = m.department_id;