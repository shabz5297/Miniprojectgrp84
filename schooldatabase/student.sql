use schooldatabase;
CREATE table student (
student_ID INTEGER PRIMARY KEY,
full_name VARCHAR(20),
total_credits INTEGER,
enrolled_course VARCHAR(20),
course_id Integer,
FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

insert into student VALUES
('123456', 'jane_doe', '120', 'English', 123456);
