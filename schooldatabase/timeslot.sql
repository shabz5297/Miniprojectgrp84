use schooldatabase;

CREATE TABLE timeslot(
time_ID INTEGER, 
day_slot VARCHAR(20)
start_time TIME,
end_time TIME
PRIMARY KEY (time_ID)
);

insert into timeslot values (1, 'monday', '10:00:00', '12:00:00')
