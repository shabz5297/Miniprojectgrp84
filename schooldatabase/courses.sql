use schooldatabase;

CREATE TABLE courses(
  course_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
  course_title VARCHAR(100) NOT NULL,
  credit_value INTEGER NOT NULL CHECK(credit_value > 0),
  dept_id INTEGER NOT NULL,
  CONSTRAINT fk_courses_department
  FOREIGN KEY (dept_id) REFERENCES
  department(dept_id)
  );
  
insert into courses (course_title, credit_value, dept_id)
VALUES  ('software', 20, 1);
