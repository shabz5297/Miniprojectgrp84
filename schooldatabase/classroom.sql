use schooldatabase;

CREATE TABLE classroom(
  building_name VARCHAR(20),
  room_number INTEGER,
  seat_capacity INTEGER,
  PRIMARY KEY(building_name, room_number)
  );

INSERT INTO classroom VALUES('Percey Gee', 4, 300)
