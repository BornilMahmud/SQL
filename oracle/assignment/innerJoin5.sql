select e.first_name ||' '|| e.last_name as employees_name ,d.department_name,l.city from employees e 
inner join departments d on
e.department_id =d.department_id
inner join locations l on 
d.location_id = l.location_id;