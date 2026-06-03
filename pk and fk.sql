create database schooldb;

use schooldb;

CREATE TABLE childern (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30)
);

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES childern(id)
);


ALTER TABLE childern
ADD email VARCHAR(100);

ALTER TABLE childern
MODIFY course VARCHAR(50);

ALTER TABLE childern
RENAME COLUMN course TO course_name;

ALTER TABLE childern
DROP COLUMN email;


