use schooldatabase;

CREATE TABLE courses(
  course_ID INTEGER(6),
  course_title VARCHAR(20),
  credit_value INTEGER(3),
  sections VARCHAR(20),
  PRIMARY KEY(course_ID)
  );
  
insert into courses values(123456, 'Software', 20, 'Architecture');
