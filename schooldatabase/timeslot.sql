use schooldatabase;

CREATE TABLE timeslot(
time_ID INTEGER [pk, increment]
day_slot VARCHAR(16) NOT NULL,
start_time TIME NOT NULL,
end_time TIME NOT NULL
CHECK (end_time > start_time)
);

insert into timeslot values (1, 'monday', '10:00:00', '12:00:00')
