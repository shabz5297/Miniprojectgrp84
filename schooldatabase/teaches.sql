use schooldatabase

create table teaches (
  teaches_id INT AUTO_INCREMENT PRIMARY KEY,
  instructor_id INT NOT NULL,
  section_id INT NOT NULL,

CONSTRAINT fk_teaches_instructor
  FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
  CONSTRAINT fk_teaches_section
  FOREIGN KEY (section_id) REFERENCES sections(section_id),

UNIQUE KEY uq_teaches (instructor_id, section_id)

insert into teaches (instructor_id, section_id)
VALUES (1, 1);

/* not sure if this is right */
