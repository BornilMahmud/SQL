SELECT e.first_name || ' ' || e.last_name AS employee_name,
       d.department_name
FROM employees e
FULL JOIN departments d
ON e.department_id = d.department_id
WHERE e.department_id IS NULL
   OR d.department_id IS NULL;