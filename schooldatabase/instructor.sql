use schooldatabase;
create TABLE instructor (
instructor_ID INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
annual_salary DECIMAL(10,2) NOT NULL,
dept_id INT NOT NULL,
FOREIGN KEY (dept_id) REFERENCES
department(dept_id)
);

Insert into instructor (intructor_ID, full_name, annual_salary, dept_id)
VALUES ('1123456', 'john_doe', '100,000', 'Science');
