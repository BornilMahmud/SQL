SELECT j.job_title,
       e.first_name || ' ' || e.last_name AS employee_name
FROM employees e
RIGHT JOIN jobs j
ON e.job_id = j.job_id;