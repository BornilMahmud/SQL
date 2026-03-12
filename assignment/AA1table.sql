-- 1. COUNTRIES TABLE
CREATE TABLE countries (
    country_id      VARCHAR2(10) PRIMARY KEY,
    country_name    VARCHAR2(50),
    region_id       NUMBER
);

-- 2. LOCATIONS TABLE
CREATE TABLE locations (
    location_id     NUMBER PRIMARY KEY,
    city            VARCHAR2(50),
    state_province  VARCHAR2(50),
    country_id      VARCHAR2(10),
    CONSTRAINT fk_locations_country
        FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
);

-- 3. JOBS TABLE
CREATE TABLE jobs (
    job_id      VARCHAR2(10) PRIMARY KEY,
    job_title   VARCHAR2(50),
    min_salary  NUMBER,
    max_salary  NUMBER
);

-- 4. DEPARTMENTS TABLE
CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(50),
    location_id     NUMBER,
    manager_id      NUMBER,
    CONSTRAINT fk_departments_location
        FOREIGN KEY (location_id)
        REFERENCES locations(location_id)
);

-- 5. EMPLOYEES TABLE
CREATE TABLE employees (
    employee_id     NUMBER PRIMARY KEY,
    first_name      VARCHAR2(50),
    last_name       VARCHAR2(50),
    department_id   NUMBER,
    manager_id      NUMBER,
    job_id          VARCHAR2(10),
    salary          NUMBER(10,2),
    hire_date       DATE,
    CONSTRAINT fk_emp_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT fk_emp_job
        FOREIGN KEY (job_id)
        REFERENCES jobs(job_id),
    CONSTRAINT fk_emp_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

-- INSERT DATA
INSERT INTO countries VALUES ('US', 'United States', 1);
INSERT INTO countries VALUES ('BD', 'Bangladesh', 2);

INSERT INTO locations VALUES (100, 'New York', 'NY', 'US');
INSERT INTO locations VALUES (200, 'Dhaka', 'Dhaka', 'BD');

INSERT INTO jobs VALUES ('IT_PROG', 'Programmer', 4000, 9000);
INSERT INTO jobs VALUES ('HR_REP', 'HR Representative', 3000, 7000);

INSERT INTO departments VALUES (10, 'IT', 100, NULL);
INSERT INTO departments VALUES (20, 'HR', 200, NULL);

INSERT INTO employees VALUES (1, 'John', 'Smith', 10, NULL, 'IT_PROG', 6000, DATE '2021-01-10');
INSERT INTO employees VALUES (2, 'Alice', 'Brown', 20, 1, 'HR_REP', 5000, DATE '2022-03-15');

COMMIT;
