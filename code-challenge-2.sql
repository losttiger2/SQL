create database code_challenge;

use code_challenge;

create table Employee
(Name varchar(10),Salary Money);

insert into Employee values
('abc',100000),
('bcd',1000000),
('efg',40000),
('ghi',500000);
  
  drop table Employee;

  select * from Employee;

  select MAX(Name) as Name,MAX(salary) as Salary
  from Employee
  where Salary < (select max(salary)
  from Employee);

  