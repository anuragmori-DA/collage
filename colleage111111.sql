Create database college;

use college;

CREATE table student (
  id int primary key,
  name varchar(50),
  course varchar (50),
  marks int
  );
  
INSERT INTO student VALUES
(1,"mehul","Data Anayltics",65),  
(2,"meet","Data Engineer",71),
(3,"yug","Data Science",58),
(4,"vivek","Business Anayltics",85),
(5,"vansh","Risk Analyst",70);

select * from student;

SELECT course, AVG(marks)
FROM student
GROUP BY course;

SELECT course, AVG(marks)
FROM student
GROUP BY course
HAVING AVG(marks) > 75;

SELECT * FROM student
LIMIT 4;

SELECT *
FROM student
WHERE course IN ('Data Anayltics','Data Science');

SELECT *
FROM student
WHERE marks BETWEEN 60 AND 90;

SELECT *
FROM student
WHERE name LIKE 'm%';

-- Average marks per course
SELECT course, AVG(marks) AS average_marks
FROM student
GROUP BY course;

-- Courses where average marks > 70
SELECT course, AVG(marks) AS avg_marks
FROM student
GROUP BY course
HAVING AVG(marks) > 60;

-- Top 3 students by marks
SELECT name, marks
FROM student
ORDER BY marks DESC
LIMIT 3;

-- Students in Business Analytics or Data Engineer with marks between 70 and 90
SELECT * FROM student
WHERE course IN ('Businee Analytics', 'Data Engineer')
AND marks BETWEEN 60 AND 90;

-- Summary of student marks
SELECT 
  COUNT(*) AS total_student,
  SUM(marks) AS total_marks,
  AVG(marks) AS average_marks,
  MAX(marks) AS highest_marks,
  MIN(marks) AS lowest_marks
FROM student;

SELECT COUNT(*) AS total_student
FROM student;

SELECT
MAX(marks) AS highest_marks,
MIN(marks) AS lowest_marks
FROM student;

SELECT course,
SUM(marks) AS total_marks
FROM student
GROUP BY course;

SELECT course,
AVG(marks) AS average_marks
FROM student
GROUP BY course;

SELECT course,
AVG(marks) AS average_marks
FROM student
GROUP BY course
HAVING AVG(marks) > 80;

SELECT name, marks
FROM student
ORDER BY marks DESC
LIMIT 2;

SELECT *
FROM student
WHERE marks BETWEEN 70 AND 90;

SELECT *
FROM student
WHERE course IN ('Businee Analytics','Data Science');

SELECT COUNT(DISTINCT course) AS total_courses
FROM student;

SELECT *
FROM student
WHERE name LIKE 'M%';

DROP TABLE IF EXISTS student;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(30)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE
);

-- Students
INSERT INTO student VALUES
(1, 'Aman', 'Python'),
(2, 'Naman', 'SQL'),
(3, 'dhaval', 'Data Analysis'),
(4, 'yash', 'power bi');

select * from student;

-- Marks
INSERT INTO marks VALUES
(101, 1, 85),
(102, 2, 90),
(103, 3, 78),
(104, 1, 88);  -- Aman two marks

select * from marks;

ALTER TABLE student
ADD email VARCHAR(50);

DESCRIBE student;

ALTER TABLE student
MODIFY course VARCHAR(50);

ALTER TABLE student
RENAME COLUMN course TO course_name;

ALTER TABLE student
DROP COLUMN email;

RENAME TABLE student TO student_info;

DELETE FROM student_info WHERE id = 1;  -- Delete dhaval
SELECT * FROM marks;

TRUNCATE TABLE marks;
SELECT * FROM marks;  -- Output: empty

DROP TABLE marks;
DROP TABLE student_info;

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30)
);

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES student(id)
);

ALTER TABLE student
ADD email VARCHAR(100);

ALTER TABLE student
MODIFY course VARCHAR(50);

ALTER TABLE student
DROP COLUMN email;

RENAME TABLE student TO student_info;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS student_info;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30)
);

select * from teachers

ALTER TABLE teachers
ADD email VARCHAR(100);

ALTER TABLE teachers
MODIFY subject VARCHAR(50);

ALTER TABLE teachers
RENAME COLUMN subject TO subject_name;

ALTER TABLE teachers
DROP COLUMN email;

RENAME TABLE teachers TO faculty;

CREATE TABLE faculty_salary (
    salary_id INT PRIMARY KEY,
    teacher_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (teacher_id)
    REFERENCES faculty(teacher_id)
    ON DELETE CASCADE
);

INSERT INTO faculty VALUES
(1, 'yash','Math'),
(2, 'yug','Science'),
(3, 'vivek','English');


INSERT INTO faculty_salary VALUES
(101, 1, 50000),
(102, 2, 55000),
(103, 3, 60000);

DELETE FROM faculty
WHERE teacher_id = 1;

SELECT * FROM faculty_salary;

TRUNCATE TABLE faculty_salary;

DROP TABLE faculty_salary;
DROP TABLE faculty;