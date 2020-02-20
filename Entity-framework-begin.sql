Create database EmployeeDB;

use EmployeeDB;

create table Employee
(EMP_ID INT PRIMARY KEY,
 NAME VARCHAR(30) NOT NULL,
 SALARY MONEY NOT NULL,
 DEPT_ID INT NOT NULL);

SELECT * FROM Employee;
 
select * from Department;

select @@servername;

create table Department
(DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(30));

INSERT INTO DEPARTMENT
VALUES
(1,'Admin'),
(2,'Marketing'),
(3,'Technical');

ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_DEPT_ID FOREIGN KEY (DEPT_ID)
REFERENCES DEPARTMENT(DEPT_ID);

