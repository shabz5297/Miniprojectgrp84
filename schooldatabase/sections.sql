USE schooldatabase;

CREATE TABLE sections(
  section_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  classroom_id INT NOT NULL,
  course_id INT NOT NULL,
  time_id INTEGER NOT NULL
  FOREIGN KEY (time_id) REFERENCES timeslot(time_id)
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
  FOREIN KEY (classroom_id) REFERENCES classroom(classroom_id)
  
  );

INSERT INTO sections (section_id, classroom, time_id
VALUES(12345, 'Sir Bob Brugges', 1);

