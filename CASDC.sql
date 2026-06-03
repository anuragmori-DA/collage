create database studentdb;

use studentdb;


CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students VALUES (1, 'Aman'), (2, 'Neha');
INSERT INTO marks VALUES (101, 1, 85), (102, 2, 90);


DELETE FROM students WHERE id = 1;

SELECT * FROM marks; 

