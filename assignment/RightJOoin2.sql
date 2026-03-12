select d.department_id , l.city 
    from departments d 
    right join locations l on 
    d.location_id =l.location_id;