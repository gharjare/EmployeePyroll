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
alter table employee_pyroll add PhoneNumber varchar(250);
alter table employee_pyroll add address varchar(250);
alter table employee_pyroll add department varchar(150);
--uc9
alter table employee_pyroll add  basic_pay int;
alter table employee_pyroll add deduction int;
alter table employee_pyroll add taxable_pay int;
alter table employee_pyroll add income_tax int;
alter table employee_pyroll add net_pay int;
--10
update employee_pyroll
set department = 'Sales'
where name = 'Terisa'
insert into employee_pyroll (name,salary,start,Gender,PhoneNumber,address,department,deduction,basic_pay,taxable_pay,income_tax,net_pay) values ('Teresa', 20000,'2022-08-06','F',7936462332,'America','Marketing',10000,20000,20000,50000,15000);
--UC11

create table EmployeePyroll
(empid int primary key identity(1,1),
Name varchar (100),
PhoneNumber bigint,
Address varchar (100)
)
select * from EmployeePyroll
insert into EmployeePyroll(Name,PhoneNumber,Address) values ('Chetan',7038860320,'Maharashtra')
insert into EmployeePyroll(Name,PhoneNumber,Address) values ('Rahul',7487222510,'Delhi')
insert into EmployeePyroll(Name,PhoneNumber,Address) values ('Vishal',7298415510,'Jammu')
insert into EmployeePyroll(Name,PhoneNumber,Address) values ('Kartik',9822645240,'Sikkim')
create table Department
(Did int primary key identity(1,1),
DepartName varchar(50),
id int not null,
foreign key (id) REFERENCES EmployeePyroll(empid)
)
select * from Department

insert into Department(DepartName,id) values ('Production',1)
insert into Department(DepartName,id) values ('Marketing',2)
insert into Department(DepartName,id) values ('Sales',3)
create table Salary
(Sid int primary key identity(1,1),
Salary bigint,
BasicPay bigint,
Deduction bigint,
TaxaBlePay bigint,
IncomeTax bigint,
NetPay bigint,
id int not null,
foreign key (id) REFERENCES EmployeePyroll (empid)
)
select * from Salary
insert into Salary(Salary,BasicPay,Deduction,TaxaBlePay,IncomeTax,NetPay,id) values (50000,45000,50000,3000,5000,60000,1)
insert into Salary values (60000,55000,40000,4000,6000,70000,2)
insert into Salary values (70000,60000,30000,3000,7000,80000,3)
insert into Salary values (60000,55000,40000,4000,6000,70000,4)
select * from EmployeePyroll,Department where EmployeePyroll.empid = Department.id and EmployeePyroll.empid=1;
