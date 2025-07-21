CREATE DATABASE task1;

USE task1;

CREATE TABLE PRACTISE1 (
STUD_ID INT PRIMARY KEY AUTO_INCREMENT,
STU_NAME VARCHAR(200) NOT NULL,
EMAIL VARCHAR(200) NOT NULL);

INSERT INTO PRACTISE1 (STU_NAME,EMAIL)
VALUES
('PRANATHI', 'pranathi@gmail.com'),
('SRAVANTHI', 'srav@gmail.com'),
('sony', 'sony@gmail.com');

desc practise1;

select * from practise1;

alter table practise1
add course_id int check (course_id > 0 and course_id < 13);

alter table practise1
add column age int not null default 15;

update practise1
set age = 16
where stud_id > 5;	

create table courses (
course_id int primary key,
course_name varchar(100));

create  table staffs (
staff_id int auto_increment PRIMARY KEY,
staff_name varchar(90),
course_id int,
FOREIGN KEY (course_id) REFERENCES courses(course_id) );

