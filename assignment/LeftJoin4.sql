select e.first_name || ' ' || e.last_name  as employees_name,
      m.first_name || ' ' || m.last_name  as manager_name
    from employees e left join employees m 
    on e.manager_id = m.manager_id ;