SELECT e.first_name || ' ' || e.last_name AS employee_name,
       j.job_title
FROM employees e
FULL JOIN jobs j
ON e.job_id = j.job_id;