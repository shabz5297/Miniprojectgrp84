-- database selection
create database schooldatabase;
use schooldatabase;
create table department( -- table to store each university department
department_id Integer primary key , -- department primary key
name VARCHAR(100) not null -- department name
);

create table instructor 
(instructor_id integer primary key, -- instructor pk
full_name VARCHAR(100) not null , -- instructors name
department_id  integer, -- to link to department
foreign key(department_id) references department(department_id));

Create tableE course -- Information about modules stored in course table
(course_id  integer Primary key ,    -- pk for course records
Title   VARCHAR(100) not null,   -- Course title
credit_value integer not null , -- credit weighting
department_id  int , -- department that has the course
foreign key (department_id) references department(department_id));

Create table section  ( -- section table for different course offers
section_id int primary key,    -- section identifier
course_id  int Not  null,  -- -- references course table 
term   VARCHAR(10), -- term the course will be taught
year int, -- year of study
Foreign key (course_id) references course (course_id )
);

-- task 4a) 
CREATE TABLE student -- Table for information on the students
(student_id  integer primary key ,  -- student records pk
full_name  VARCHAR(100),  -- student name
department_id  integer , -- department student has enrolled in 
foreign key( department_id) references department(department_id)); 

Create table takes --  stores the section the student has enrolled in along with their grade
(student_id integer not null , -- foreign key for student name
section_id int not null , -- foreign key for section ID
grade CHAR(2), -- grade awarded 
primary key (student_id, section_id),  --  one entry per student-section
Foreign key (student_id) References student(student_id),
Foreign key (section_id) references  section(section_id));

Create Table  grade_points -- grade point table matching each point to a grade
 (grade  CHAR(2) PRIMARY KEY, -- letter for grade
points DECIMAL(2,1) NOT NULL -- Gpa grade points
);

-- 4b)
Create table teaches ( -- 'teaches' table to show which instructor teaches which subject
instructor_id integer  not null, -- -- teacher name
section_id    integer not null , -- section they teach
Primary key (instructor_id, section_id),
Foreign key (instructor_id) references instructor(instructor_id),
Foreign key (section_id)    References section(section_id));

Insert into department ( department_id, name) Values -- -sample data for department table
(1,'Department of Computer Science') , -- dept 1
(2, 'Mathematics') -- dept 2
;

Insert into instructor ( instructor_id,full_name , department_id) values -- instructor sample row
(101,'Professor Smith',1) , -- 1st teacher
(102,'Professor Ali',2),-- 2nd teacher
( 103, 'Proffesor Kim', 1)-- 3rd teacher that doesnt teach any sections   
;
  
Insert into course(course_id , title , credit_value , department_id ) Values -- course table sample data
(1, 'Database Systems', 3, 1), -- 1st course 
(2, 'Calculus', 4, 2 ), -- 2nd course
(3, 'Programming', 3, 1 ) -- 3rd course
;
INsert into section (section_id, course_id, term, year) values -- examples for section table
(1,1, 'Autumn', 2025), -- section for 1st course
(2, 2, 'Autumn' , 2025), -- section for 2nd course
(3, 3, 'Spring', 2025)-- section for 3rd course
;
Insert into teaches (instructor_id, section_id) Values -- teaches table examples
(101 , 1), --  Professor Smith teaches the 1st section 
(102 , 2 ) -- Professor Ali teaches the 2md section
;
Insert into grade_points (grade, points) Values -- table for grade points
('A',  4.0 ) , ( 'B', 3.0 ) , ('C', 2.0 ) , ( 'D', 1.0 ), ( 'F', 0.0 ) -- How GPA points correspond to letter grades 
;
Insert into student (student_id, full_name, department_id) Values -- example of students
(201, 'Ben', 1),-- Ben is in department 1
(202, 'John',1), -- John is also in dept 1 
(203, 'Sam',2); -- Sam is in dept 2

Insert into takes (student_id, section_id, grade)   values -- takes table
(201,  1, 'A'), -- Ben got an A in the first section
(202, 1,'B'), -- John got a B in the first section
(203, 2,'A'); -- Sam got an A in section 2

Select -- Finding number of sections each instructor teaches
i.instructor_id, -- instructors ID
i.full_name, -- instructors name
Count(t.section_id) as  num_sections -- amount of section an intructor teaches
From instructor as i -- instructor table 
Left join teaches as t -- Even if instructors dont teach sections, include them
On i.instructor_id=t.instructor_id -- linking the instructors to the sections the teach 
group by  i.instructor_id, i.full_name 
order by i.instructor_id
;
-- 4c)
select st.student_id, st.full_name, T.section_id, T.grade -- Students id, name, section and grade they achieved
From student as st 
Join takes  as  T
on st.student_id= T.student_id -- any student who takes a section, (they appear in takes)
union all
Select st.student_id, st.full_name,null as section_id,null as grade -- students id and name, that dont take a section and dont have a grade
From student as st
where st.student_id not in (select student_id From takes) -- students that dont take a section meaning they dont appear in takes
;
-- 4di)
select -- getting a students total grade points
sum(c.credit_value* g.points) as total_grade_points -- taking the product of grade points and  credits
From takes as t -- table with the students grade from each section
Join section as s on t.section_id = s.section_id -- linking the student to the section they take
Join course  as c on s.course_id  = c.course_id -- linking the section to the course to get credits
join grade_points as g on t.grade = g.grade -- matching student's letter grade to its  grade point value
where  t.student_id= 201 ; --  finding results specifically for student 201 (Ben)
-- 4dii)
select -- getting a students gpa
t.student_id, -- specific student
sum(c.credit_value *g.points)/sum(c.credit_value) as gpa -- formula dividing grade points by credits
from takes as t -- the students grade
join section as s on t.section_id = s.section_id -- the section the student took
Join course  as c on s.course_id= c.course_id -- finding credits for students course
Join grade_points as g on t.grade = g.grade-- changing the letter grade to a grade point value
Where t.student_id = 201 -- gpa for this specifc student (ben)
group by t.student_id; -- grouping to calculate the gpa
-- 4diii)
Select -- calculation for students gpa
t.student_id, -- student id
sum(c.credit_value * g.points)/ sum(c.credit_value ) as gpa -- formula for calculating gpa where we divide total points by credits
from takes as t -- table with student grades
Join section as s on t.section_id= s.section_id -- linking student back to the section they took
Join course as c on s.course_id= c.course_id -- get credit value by finding the course
join grade_points as g on t.grade = g.grade -- converting the letter grade to its grade point equivalent
group by t.student_id -- combine all results from the student to get their gpa
Order by t.student_id; -- sorted into a list of student IDs.
