
CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR NOT NULL,
    hod_name VARCHAR NOT NULL,
    total_faculty INT CHECK (total_faculty > 0)
);

INSERT INTO department (dept_name, hod_name, total_faculty) VALUES
('Computer Science', 'Dr. Mehta', 12),
('Mathematics', 'Dr. Joshi', 10),
('Physics', 'Dr. Iyer', 8),
('English', 'Dr. Patil', 9),
('Biology', 'Dr. Sharma', 11),
('Chemistry', 'Dr. Naik', 10),
('History', 'Dr. Rao', 7),
('Economics', 'Dr. Kapoor', 13),
('Psychology', 'Dr. Deshmukh', 6),
('Political Science', 'Dr. Verma', 9),
('Computer Science', 'Dr. Mehta', 12),
('Mathematics', 'Dr. Joshi', 10),
('Physics', 'Dr. Iyer', 8),
('English', 'Dr. Patil', 9),
('Biology', 'Dr. Sharma', 11),
('Chemistry', 'Dr. Naik', 10),
('History', 'Dr. Rao', 7),
('Economics', 'Dr. Kapoor', 13),
('Psychology', 'Dr. Deshmukh', 6),
('Political Science', 'Dr. Verma', 9),
('Sociology', 'Dr. Reddy', 10),
('Philosophy', 'Dr. Ghosh', 8),
('Statistics', 'Dr. Menon', 11),
('Geography', 'Dr. Bhatia', 9),
('Environmental Science', 'Dr. Kulkarni', 7),
('Linguistics', 'Dr. Dutta', 6),
('Law', 'Dr. Singh', 12),
('Commerce', 'Dr. Nair', 15),
('Accounting', 'Dr. Jain', 14),
('Business Management', 'Dr. Pandey', 13),
('Finance', 'Dr. Malhotra', 11),
('Marketing', 'Dr. Chauhan', 10),
('Human Resource', 'Dr. Pillai', 8),
('Sociolinguistics', 'Dr. Ghosalkar', 6),
('Education', 'Dr. More', 9),
('Fine Arts', 'Dr. Gaikwad', 10),
('Music', 'Dr. Bhave', 8),
('Dance', 'Dr. Kamat', 7),
('Theatre Arts', 'Dr. Tiwari', 9),
('Library Science', 'Dr. Salunkhe', 5),
('Information Technology', 'Dr. Pawar', 13),
('Electronics', 'Dr. Patwardhan', 11),
('Electrical Engineering', 'Dr. Chavan', 12),
('Mechanical Engineering', 'Dr. Kadam', 15),
('Civil Engineering', 'Dr. Lokhande', 14),
('Automobile Engineering', 'Dr. Shetty', 10),
('Aerospace Engineering', 'Dr. Dandekar', 9),
('Metallurgy', 'Dr. Bhosale', 8),
('Chemical Engineering', 'Dr. Pathak', 13),
('Architecture', 'Dr. Phadke', 10),
('Interior Design', 'Dr. Kale', 7),
('Fashion Design', 'Dr. Joshi', 8),
('Textile Engineering', 'Dr. Nene', 9),
('Food Technology', 'Dr. Pawaskar', 11),
('Microbiology', 'Dr. Wagh', 10),
('Zoology', 'Dr. Gaitonde', 8),
('Botany', 'Dr. Pujari', 9),
('Marine Biology', 'Dr. Dumbre', 6),
('Genetics', 'Dr. Karve', 7),
('Biotechnology', 'Dr. Rege', 10),
('Pharmacy', 'Dr. Sawant', 12),
('Medical Laboratory', 'Dr. Khanna', 11),
('Nursing', 'Dr. Desai', 13),
('Public Health', 'Dr. Inamdar', 9),
('Dentistry', 'Dr. Bansal', 10),
('Veterinary Science', 'Dr. Jadhav', 8),
('Agriculture', 'Dr. Rane', 11),
('Horticulture', 'Dr. Phanse', 10),
('Forestry', 'Dr. Mane', 7),
('Fisheries', 'Dr. Pawar', 6),
('Animal Husbandry', 'Dr. Bhong', 8),
('Sports Science', 'Dr. Patil', 9),
('Physical Education', 'Dr. Naidu', 7),
('Journalism', 'Dr. Wagle', 8),
('Mass Communication', 'Dr. Khandekar', 10),
('Film Studies', 'Dr. Thakur', 7),
('Photography', 'Dr. Kamat', 6),
('Public Administration', 'Dr. Pingle', 9),
('International Relations', 'Dr. Bhattacharya', 8),
('Anthropology', 'Dr. Kulkarni', 9),
('Archaeology', 'Dr. Gaur', 7),
('Defense Studies', 'Dr. Gupte', 10),
('Criminology', 'Dr. Kamble', 8),
('Cyber Security', 'Dr. Shinde', 12),
('Data Analytics', 'Dr. Bhave', 11),
('Artificial Intelligence', 'Dr. Patankar', 14),
('Machine Learning', 'Dr. Ingle', 13),
('Cloud Computing', 'Dr. Bhaskar', 10),
('Networking', 'Dr. Dighe', 9),
('Robotics', 'Dr. Mahajan', 8),
('Automation', 'Dr. Tambe', 10),
('Game Development', 'Dr. Bhat', 9),
('Multimedia', 'Dr. Joglekar', 8),
('Web Development', 'Dr. Korde', 11),
('App Development', 'Dr. Joshi', 10),
('Blockchain', 'Dr. Purohit', 9),
('Quantum Computing', 'Dr. Chitale', 7),
('Astronomy', 'Dr. Pawaskar', 6),
('Astrophysics', 'Dr. Ghadge', 8),
('Geology', 'Dr. Dixit', 10),
('Oceanography', 'Dr. Potdar', 7),
('Meteorology', 'Dr. Borse', 9),
('Climate Science', 'Dr. Rathi', 8),
('Renewable Energy', 'Dr. Bhalerao', 10),
('Energy Management', 'Dr. Deshmukh', 11),
('Tourism', 'Dr. Sane', 9),
('Hospitality', 'Dr. Bendre', 8),
('Culinary Arts', 'Dr. Shah', 7),
('Event Management', 'Dr. Pandit', 9),
('Social Work', 'Dr. Gaonkar', 10),
('Rural Development', 'Dr. Koli', 8),
('Women Studies', 'Dr. Tendulkar', 7),
('Peace Studies', 'Dr. Bhujbal', 6);


select * from department


CREATE TABLE faculty (
    faculty_id SERIAL PRIMARY KEY,
    faculty_name VARCHAR NOT NULL,
    gender CHAR CHECK (gender IN ('M', 'F')),
    salary NUMERIC(10,2) CHECK (salary > 0),
    dept_id INT,
	foreign key (dept_id) REFERENCES department(dept_id)
); 

INSERT INTO faculty (faculty_name, gender, salary, dept_id) VALUES
('Ishaan Pandey', 'M', 61296.54, 331),
('Tanya Mehta', 'M', 80466.0, 223),
('Tanya Kulkarni', 'F', 39024.62, 286),
('Kiara Iyer', 'M', 88919.69, 263),
('Aarav Joshi', 'M', 82811.51, 15),
('Tanya Menon', 'M', 61834.53, 221),
('Sai Mehta', 'M', 30148.61, 387),
('Krishna Patil', 'F', 69036.11, 441),
('Ananya Deshmukh', 'M', 39018.15, 331),
('Isha Sharma', 'M', 43285.47, 409),
('Ananya Reddy', 'M', 92560.97, 134);

select * from faculty 


CREATE TABLE student1 (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age BETWEEN 17 AND 30),
    dept_id INT, 
	foreign key (dept_id) REFERENCES department(dept_id) 
);

select * from student1

INSERT INTO student1 (student_name, gender, age, dept_id) VALUES
('Aarav Sharma', 'M', 19, 1),
('Isha Patel', 'F', 20, 2),
('Rohan Desai', 'M', 22, 3),
('Sneha Kulkarni', 'F', 18, 4),
('Vikram Joshi', 'M', 21, 5),
('Pooja Verma', 'F', 23, 6),
('Karan Mehta', 'M', 20, 7),
('Riya Singh', 'F', 19, 8),
('Sahil Khan', 'M', 24, 9),
('Mansi Gupta', 'F', 18, 10),
('Shreya Nair', 'F', 20, 14),
('Arjun Soni', 'M', 25, 15);


CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR NOT NULL,
    credit INT CHECK (credit BETWEEN 1 AND 6),
    dept_id INT,
	foreign key (dept_id) REFERENCES department(dept_id) 
); 

select * from course

INSERT INTO course (course_name, credit, dept_id) VALUES
('Introduction to Computer Science', 4, 1),
('Data Structures', 3, 1),
('Operating Systems', 4, 1),
('Database Management Systems', 3, 1),
('Discrete Mathematics', 4, 2),
('Linear Algebra', 3, 2),
('Probability & Statistics', 4, 2),
('Classical Mechanics', 4, 3),
('Quantum Physics', 3, 3),
('Electromagnetism', 4, 3),
('English Literature', 3, 4),
('Creative Writing', 2, 4),
('Cell Biology', 4, 5),
('Genetics', 3, 5),
('Organic Chemistry', 4, 6);

create table enrollment(
   enroll_id serial primary key,
   student_id int references student1(student_id),
   course_id int references course(course_id),
   grade char check (grade in('A','B','C','D','F')),
   semester varchar not null 
)  

select * from enrollment

INSERT INTO enrollment (student_id, course_id, grade, semester) VALUES
(1, 3, 'A', 'Spring 2024'),
(2, 5, 'B', 'Fall 2023'),
(3, 2, 'A', 'Winter 2024'),
(4, 1, 'C', 'Spring 2024'),
(5, 7, 'B', 'Fall 2023'),
(6, 10, 'A', 'Summer 2024'),
(7, 4, 'D', 'Spring 2024'),
(8, 6, 'B', 'Fall 2023'),
(9, 8, 'A', 'Winter 2024'),
(10, 9, 'C', 'Spring 2024'),
(11, 12, 'B', 'Fall 2023'),
(12, 11, 'A', 'Summer 2024'),
(13, 14, 'C', 'Spring 2024'),
(14, 13, 'B', 'Winter 2024'),
(15, 15, 'A', 'Fall 2023');


create table attendance(
   attendance_id serial primary key,
   student_id int references student1(student_id),
   course_id int references course(course_id),
   attendance_percent numeric(5,2) check (attendance_percent between 0 and 100),
   status varchar check(status in ('regular','Irregular'))
);

select * from attendance 

INSERT INTO attendance (student_id, course_id, attendance_percent, status) VALUES
(1, 3, 92.50, 'regular'),
(2, 5, 84.20, 'regular'),
(3, 2, 68.40, 'Irregular'),
(4, 1, 95.00, 'regular'),
(5, 7, 72.10, 'regular'),
(6, 10, 56.80, 'Irregular'),
(7, 4, 88.30, 'regular'),
(8, 6, 79.90, 'regular'),
(9, 8, 61.50, 'Irregular'),
(10, 9, 97.20, 'regular');

50 query

select student_name, age from student1 

select faculty_name, salary from faculty where gender= 'F'

select * from student1 where age between 18 and 22

select * from faculty where gender = 'M'

select * from student1 where age > 20 and dept_id = '3'

select * from course where credit='3' or credit = '4' 

select * from attendance where status = 'Irregular'

select min(salary) as min_salary from faculty 

select max(salary) as max_salry from faculty 

select avg(salary) as avg_salry from faculty

select * from faculty where salary between 40000 and 80000

select distinct semester from enrollment 

select distinct dept_id from course order by dept_id desc

select * from department where dept_name in ('Physics','Bilogy','Economics')

select * from faculty
order by salary desc
limit 5

select age, student_name from student1 order by age limit 10 

select * from student1 order by age desc

select * from course offset 15 

select * from attendance limit 20

select count(*)as total_student from student1 

select dept_id, count(*) as faculty_count from faculty 
group by dept_id 

select avg(salary) as avg_salary from faculty 

select min(attendance_percent) as min_att_percent from attendance

select max(credit) as max_credit from course

select avg(attendance_percent) as avg_attendance ,course_id from attendance group by course_id

select course_id, count(student_id) as total_student from enrollment group by course_id

select avg(salary) as avg_salary,dept_id from faculty 
group by dept_id
having avg(salary)>50000 

select dept_id, count(*) as student_count from student1 group by dept_id having count(* )> 20 

select dept_id,count(*) as faculty_count from faculty group by dept_id 

select s.student_name , d.dept_name
from student1 s 
join department d 
on s.dept_id = d.dept_id 

select c.course_name , d.dept_name
from course c
left join department d 
on c.dept_id = d.dept_id

select e.enroll_id , s.student_name, c.course_name
from enrollment e
left join student1 s on e.student_id = s.student_id
left join course c on e.course_id = c.course_id

select a.attendance_percent , s.student_name
from  attendance a
left join student1 s
on a.student_id = s.student_id

select f.faculty_name , d.dept_name
from faculty f
left join department d 
on f.dept_id =d.dept_id

select d.* , s.student_name
from department d
left join student1 s
on d.dept_id = s.dept_id

select s.student_name , e.course_id
from student1 s 
left join enrollment e 
on s.student_id = e.student_id 

select c.course_name, e.student_id
from course c
left join enrollment e
on c.course_id = e.course_id  

select student_name, age ,
   case 
       when age < 18 then 'Teen'
	   when age between 18 and 24 then 'Young Adult'
	   else 'Adult'
	   End as category
from student1

select student_id, attendance_percent, 
   case 
       when attendance_percent >= 90 then 'Excellent'
	   when attendance_percent >=70 then 'Good'
	   else 'Poor'
	   end as grade
from attendance 

alter table student1 add column email varchar unique

update faculty 
set salary = salary * 1.10 
where faculty_id = 5 

delete from attendance
where attendance_percent < 40 

alter table faculty add column phone int 

alter table faculty drop column phone

select student_id from student1
union 
select student_id from enrollment

select student_id from enrollment
intersect
select student_id from attendance

select student_id from student1
except 
select student_id from enrollment 

