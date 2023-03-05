--uc1
create database AddressBookDB
--uc2
create table AddressBook(ID bigint Identity(1,1)Primary key, FirstName varchar(max),LastName varchar(max),Address varchar(max),PhoneNumber bigint,EmailAddress varchar(max),City varchar(max),State varchar(max),Zipcode bigint)
select * from AddressBook
--uc3
insert into AddressBook values('Ravi','Teja','6th main street',493043434,'MarcoReus11@gamil.com','Broussia','Dortmund',65446)
insert into AddressBook values('Akshay','Varma','3th cross street',5767654345,'Rvarane2@gamil.com','Old Tradfford','Manchester',45324)
insert into AddressBook values('Thiago','Silva','15th main street',8798763121,'THSilva3@gamil.com','StamfordBridge','Chelsea',90898)
insert into AddressBook values('Mason','Mount','1st Rocky main street',3432454364,'MMcarze10@gamil.com','StamfordBridge','Chelsea',90898)
insert into AddressBook values('Marus','Rashford','6th cross street',9787622315,'MBEmr10@gamil.com','Old Tradfford','Manchester',45324)
--uc4
update AddressBook set FirstName='Marcus' where LastName='Rashford'
--uc5
delete from AddressBook where FirstName='thiago'
--uc6
select FirstName,LastName,Address,PhoneNumber,EmailAddress,City,Zipcode from AddressBook where State='Manchester'
--uc7
select COUNT(State) as Statecount FROM AddressBook Where State='Manchester'
--uc8
select * from AddressBook where state='Manchester' Order By FirstName ASC
--uc9
Create Table AddressBookType(ID bigint Identity(1,1)Primary key,Name varchar(Max),Type varchar(max),PersonId Bigint)
--uc10
Alter Table AddressBookType Add FOREIGN KEY(PersonID) REFERENCES AddressBook(ID)
--uc11
Insert into AddressBookType values('Ravi','Profession',1)
Insert into AddressBookType values('Akshay','Family',2)
Insert into AddressBookType values('Mason','Friend',4)
Insert into AddressBookType values('Marcus','Family',5)
Select * from AddressBookType
--uc12
Select * from AddressBook a inner join AddressBookType on AddressBookType.PersonId = a.ID Order By a.ID

select Count(Type) as Friendcount from AddressBookType where Type='Friend'
