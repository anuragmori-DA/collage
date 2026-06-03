create database studentdb;
use studentdb;

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(20),
  marks INT
);

INSERT INTO student VALUES
(1, 'Aman', 'BCA', 75),
(2, 'Neha', 'MCA', 90),
(3, 'Karan', 'BCA', 65),
(4, 'Riya', 'BBA', 80),
(5, 'Meena', 'MCA', 88);


SELECT course, AVG(marks) AS average_marks
FROM student
GROUP BY course;


SELECT course, AVG(marks) AS avg_marks
FROM student
GROUP BY course
HAVING AVG(marks) > 70;


SELECT name, marks
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT * FROM student
WHERE course IN ('BCA', 'MCA')
AND marks BETWEEN 70 AND 90;

-- Summary of student marks
SELECT 
  COUNT(*) AS total_student,
  SUM(marks) AS total_marks,
  AVG(marks) AS average_marks,
  MAX(marks) AS highest_marks,
  MIN(marks) AS lowest_marks
FROM student;



