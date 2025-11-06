USE schooldatabase;

CREATE TABLE sections(
  section_id INTEGER NOT NULL,
  classroom_id INTEGER NOT NULL,
  course_id INTEGER NOT NULL,
  time_id INTEGER NOT NULL,
  term VARCHAR(30) NOT NULL,
  FOREIGN KEY (time_id) REFERENCES timeslot(time_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id),
  FOREIGN KEY (classroom_id) REFERENCES classroom(classroom_id),
  PRIMARY KEY(course_id, term)
  
  );

INSERT INTO sections (section_id, classroom_id, time_id, course_id, term)
VALUES(1, 1, 1, 1, "summer");

