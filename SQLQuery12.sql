--UC1
create database Pyroll_Servicedb
--UC2
create table employee_pyroll
(
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Salary DECIMAL NOT NULL,
	Start DATE NOT NULL
)

--UC3
insert into employee_pyroll values ('Bill',100000.00,'2018-01-03'),('Terisa',200000.00,'2019-11-13'),('Charlie',300000.00,'2020-05-23'),('John',200000.00,'2023-01-03')
 --UC4
 select * from employee_pyroll
 --UC5
 select salary from employee_pyroll where name = 'Bill'
 select * from employee_pyroll where start Between cast('2018-01-03' as date) and GETDATE()
 --UC6
 alter table employee_pyroll add Gender char(2)
 update employee_pyroll set Gender = 'M' where name = 'Bill' or name = 'Charlie' or name = 'John'
 update employee_pyroll set Gender = 'F' where name = 'Terisa'
 --UC7
 select sum(salary) as Toatal_Salary_Of_Male from employee_pyroll where Gender = 'M' GROUP BY Gender
select sum(salary) as Toatal_Salary_Of_Female from employee_pyroll where Gender = 'F' GROUP BY Gender
select sum(salary) as Total_Salary_Of_Employee from employee_pyroll

select Avg(salary) as Average_Salary_Of_Male from employee_pyroll where Gender = 'M' GROUP BY Gender
select Avg(salary) as Average_Salary_Of_Female from employee_pyroll where Gender = 'F' GROUP BY Gender
select Avg(salary) as Average_Salary_Of_Employee from employee_pyroll

select Min(salary) as Minimum_Salary_Of_Male from employee_pyroll where Gender = 'M' GROUP BY Gender
select Min(salary) as Minimum_Salary_Of_Female from employee_pyroll where Gender = 'F' GROUP BY Gender
select Min(salary) as Minimum_Salary_Of_Employee from employee_pyroll

select Max(salary) as Maximum_Salary_Of_Male from employee_pyroll where Gender = 'M' GROUP BY Gender
select Max(salary) as Maximum_Salary_Of_Female from employee_pyroll where Gender = 'F' GROUP BY Gender
select Max(salary) as Maximum_Salary_Of_Employee from employee_pyroll

select count(salary) as Number_Of_Male_Employee from employee_pyroll where Gender = 'M' GROUP BY Gender
select count(salary) as Number_Of_Female_Employee from employee_pyroll where Gender = 'F' GROUP BY Gender
select count(salary) as Total_Employee from employee_pyroll
--UC8



