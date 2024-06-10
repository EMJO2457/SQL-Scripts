CREATE DATABASE TQLBOOTCAMP;
		
Use TQLBOOTCAMP;

go

create table students (
	Id int not null primary key identity(1,1),
	firstname varchar(30) not null, 
	lastname varchar(30) not null,
	cellphone varchar(15),
	DateofBirth DateTime not null,
	Active bit not null default 1
	)
	go

create table truckers(
	Id int not null primary key identity(1,1),
	Companyname varchar(30) not null,
	MCNUMBER INT NOT NULL, 
	DOTNUMBER INT NOT NULL, 
	PHONENUMBER CHAR(10) NOT NULL,
	ACTIVE BIT NULL)
	GO