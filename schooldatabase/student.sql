use schooldatabase;
CREATE table student (
student_ID INTEGER(6),
full_name VARCHAR(20),
total_credits INTEGER(3),
enrolled_course VARCHAR(20)
);

insert into student VALUES
('123456', 'jane_doe', '120', 'English');