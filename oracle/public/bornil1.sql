-- BM Compiler — OracleSQL-compatible (SQLite engine)
CREATE TABLE employees (
  emp_id   INTEGER PRIMARY KEY,
  emp_name TEXT NOT NULL,
  salary   REAL,
  dept     TEXT
);

INSERT INTO employees VALUES (1, 'Alice',  75000, 'Engineering');
INSERT INTO employees VALUES (2, 'Bob',    60000, 'Marketing');
INSERT INTO employees VALUES (3, 'Carol',  85000, 'Engineering');

SELECT emp_name, salary FROM employees WHERE dept = 'Engineering' ORDER BY salary DESC;
SELECT dept, AVG(salary) AS avg_salary FROM employees GROUP BY dept;
