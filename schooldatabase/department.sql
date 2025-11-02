use schooldatabase;
CREATE TABLE department (
dept_id INT AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR(20) UNIQUE NOT NULL,
location VARCHAR(20) NOT NULL,
annual_budget INTEGER(6) NOT NULL,
);

Insert into department values 
('Computing', 'South' , '100000');
