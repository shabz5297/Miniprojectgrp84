USE schooldatabase;

CREATE TABLE sections(
  section_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  classroom_id INTEGER NOT NULL,
  course_id INTEGER NOT NULL,
  time_id INTEGER NOT NULL,
  FOREIGN KEY (time_id) REFERENCES timeslot(time_id)
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
  FOREIGN KEY (classroom_id) REFERENCES classroom(classroom_id)
  
  );

INSERT INTO sections (section_id, classroom_id, time_id
VALUES(1, 1, 1);

