use schooldatabase;
CREATE table student (
student_id INTEGER PRIMARY KEY,
full_name VARCHAR(20),
total_credits INTEGER,
course_id Integer,
FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

insert into student VALUES
('123456', 'jane_doe', '120', 'English', 1);
