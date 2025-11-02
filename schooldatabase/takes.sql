use schooldatabase

create table takes (
  takes_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  section_id INT NOT NULL,
  grade VARCHAR(5),

  CONSTRAINT fk_takes_student
  FOREIGN KEY (student_id) references student(student_id)
  CONSTRAINT fk_takes_section
  FOREIGN KEY (section,id) references sections(section_id),

  UNIQUE KEYuq_student_section (student_id, section_id)

insert into takes (student_id, section_id, grade)
VALUES (1,1,'A')
