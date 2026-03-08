select e.first_name || ' ' || e.last_name as employee_name ,
      m.first_name || ' ' || m.last_name as manager_name from 
      employees e , employees m 
      where e.manager_id = m.employee_id;