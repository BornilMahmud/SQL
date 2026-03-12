select e.first_name || ' ' || e.last_name  as employees_name,
     d.department_name
    from departments d right join employees e 
    on e.department_id = d.department_id ;