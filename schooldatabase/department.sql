use schooldatabase;
CREATE TABLE department (
dept_id INT AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR(20) UNIQUE NOT NULL,
location VARCHAR(20) NOT NULL,
annual_budget DECIMAL(12,2) NOT NULL
);

Insert into department (dept_name, location, annual_budget) 
VALUES ('Computing', 'South' , 100000);
