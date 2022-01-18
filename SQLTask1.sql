--DDL
create database HumanResourcesDB

use HumanResourcesDB

create table Employee
(
	FirstName nvarchar(25),
	SurName nvarchar(25),
	Position nvarchar(50)
)

alter table Employee
add Salary decimal(10,2)

--Create Data
insert into Employee
values('Tural', 'Taghiyev', 'Data Processor', 93.5555),
('Mammad', 'Mammadov', 'Acountant', 67.8888),
('Rza', 'Rzayev', 'HR Manager', 80.74)

--WHOLE LIST
Select * from Employee

--AVERAGE SALARY
Select AVG(Salary) from Employee

--EMPLOYEE'S WITH SALARY ABOVE THE AVERAGE
Select FirstName, SurName, Salary From Employee Where Salary > (Select AVG(Salary) From Employee)

--MIN SALARY
Select MIN(Salary) from Employee

--MAX SALARY
Select MAX(Salary) from Employee

--EMPLOYEE WITH MIN SALARY
Select FirstName, SurName, Salary From Employee Where Salary = (Select Min(Salary) From Employee)

--EMPLOYEE WITH MAX SALARY
Select FirstName, SurName, Salary From Employee Where Salary = (Select Max(Salary) From Employee)






