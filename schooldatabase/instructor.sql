use schooldatabase;
create TABLE instructor (
instructor_ID VARCHAR(6),
full_name VARCHAR(20),
annual_salary INTEGER(6),
primary_dept VARCHAR(20),
PRIMARY KEY (instructor_ID)
);

Insert into instructor values
('1123456', 'john_doe', '100,000', 'Science');
