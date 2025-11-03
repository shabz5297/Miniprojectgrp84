use schooldatabase

create table takes (
  takes_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  section_id INT NOT NULL,
  grade VARCHAR(5),

  CONSTRAINT fk_takes_student
  FOREIGN KEY (student_id) references student(student_id)
  CONSTRAINT fk_takes_section
  FOREIGN KEY (section_id) references sections(section_id),

  UNIQUE KEY uq_student_section (student_id, section_id)

insert into takes (student_id, section_id, grade)
VALUES (123456,1,'A')

/* idk if this is completely right but have a look and change if needed 
  yeah i changed the student id to 123456 because a student id of 1 doesnt exist in the student.sql something there needs to be the same*/
