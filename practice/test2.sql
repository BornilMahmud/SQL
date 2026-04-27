-- =========================
-- STUDENT TABLE
-- =========================
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Rahim', 'CSE'),
(2, 'Karim', 'EEE'),
(3, 'Ayesha', 'CSE'),
(4, 'John', 'BBA'),
(5, 'Sara', 'CSE');

-- =========================
-- COURSE TABLE
-- =========================
CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  department VARCHAR(50)
);

INSERT INTO Courses VALUES
(101, 'DBMS', 'CSE'),
(102, 'Circuits', 'EEE'),
(103, 'Marketing', 'BBA'),
(104, 'Algorithms', 'CSE');

-- =========================
-- ENROLLMENTS TABLE
-- =========================
CREATE TABLE Enrollments (
  enroll_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments VALUES
(1, 1, 101, 85),
(2, 1, 104, 78),
(3, 2, 102, 65),
(4, 3, 101, 90),
(5, 5, 104, 88);

select s.name ,e.marks from students s 
  inner join 
    enrollments e on s.student_id = e.student_id
inner join 
  courses c on e.course_id = c.course_id 
where e.marks > 80 ;

