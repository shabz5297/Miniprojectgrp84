use schooldatabase;
create TABLE instructor (
instructor_ID INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
annual_salary DECIMAL(10,2) NOT NULL,
dept_id INT NOT NULL,
FOREIGN KEY (dept_id) REFERENCES
department(dept_id)
);

Insert into instructor values
('1123456', 'john_doe', '100,000', 'Science');
