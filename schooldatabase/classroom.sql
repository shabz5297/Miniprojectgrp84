use schooldatabase;

CREATE TABLE classroom(
  classroom_id INT AUTO_INCREMENT PRIMARY KEY,
  building_name VARCHAR(50) NOT NULL,
  room_number INTEGER NOT NULL,
  seat_capacity INTEGER NOT NULL CHECK (seat_capacity > 0),
  UNIQUE KEY uq_room (building_name, room_number)
  );

INSERT INTO classroom (building_name, room_number, seat_capacity)
VALUES ('Percey Gee', 4, 300)
