SELECT d.department_name,
       e.first_name || ' ' || e.last_name AS manager_name
FROM departments d
FULL JOIN employees e
ON d.manager_id = e.employee_id;