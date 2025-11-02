USE schooldatabase;

CREATE TABLE sections(
  section_id INTEGER(6),
  classroom VARCHAR(20),
  time_id INTEGER,
  PRIMARY KEY(section_ID),
  FOREIGN KEY (time_id) REFERENCES timeslot(time_id)
  );

INSERT INTO sections VALUES(12345, 'Sir Bob Brugges', 1);

