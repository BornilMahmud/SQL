SELECT first_name || ' ' || last_name AS employee_name,
       department_name,
       city
FROM employees
JOIN departments
USING (department_id)
JOIN locations
USING (location_id);