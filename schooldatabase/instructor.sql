use schooldatabase;
create TABLE instructor (
instructor_id INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
annual_salary DECIMAL(10,2) NOT NULL,
dept_id INT NOT NULL,
FOREIGN KEY (dept_id) REFERENCES
department(dept_id)
);

Insert into instructor (full_name, annual_salary, dept_id)
VALUES ('john_doe', 25000.00 '1');
