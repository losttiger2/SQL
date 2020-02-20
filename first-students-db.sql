use students;

create table students_info
(student_name varchar(30),
student_no int,course varchar(20),
course_fees int,age int,gender varchar(10),
photo image);

select * from students_info;

alter table students_info
drop column photo;