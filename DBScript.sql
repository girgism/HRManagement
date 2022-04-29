------------------------------- Creating the DataBase --------------------
CREATE DATABASE RayaDB;

------------------------------- 
USE RayaDB;

------------------------------- Creating the Users table -----------------
CREATE TABLE R_User
(
	ID INT IDENTITY(1,1) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Password VARCHAR(50) NOT NULL,
	Role VARCHAR(50) NOT NULL
	CONSTRAINT PK_User PRIMARY KEY (ID)
);

------------------------------- Creating the HR Employees table -----------------
CREATE TABLE R_HR
(
	ID INT IDENTITY(1,1) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	DateOfBirth DATETIME ,
	Age AS DATEDIFF(year,DateOfBirth,GETDATE()),
	Salary MONEY NOT NULL,
	HireDate DATE NOT NULL,
	State VARCHAR(50) ,
	CONSTRAINT PK_HR PRIMARY KEY(ID)
);

------------------------------- Inserting data in Users table -----------------
INSERT INTO R_User
VALUES('Girgis','Mirzek','gm@info.com','123ab','HR Admin'), -- As HR
		('Ahmed','Fikry','ah@info.com','123ab','HR')  -- As HR Admin

------------------------------- Inserting data in HR Employees table -----------------
INSERT INTO R_HR
VALUES('Ahmed','Ibrahim','1900-10-22',7500,'2019-10-22','New'),
		('Amer','Morcoc','1960-10-22',5500,'2019-10-22','New'),
		('Mohamed','Amr','1996-10-22',6200,'2019-10-22','New')




-----------------------------------------------------------------------------------
SELECT * FROM R_HR

SELECT * FROM R_User

UPDATE R_User
SET Role = 'HR Admin'
WHERE ID=1;

UPDATE R_User
SET Role = 'HR'
WHERE ID=2

UPDATE R_HR
SET DateOfBirth = '1970-8-23'
WHERE ID=1

DELETE FROM R_HR
WHERE FirstName='Osama'

DELETE FROM R_User

INSERT INTO R_HR
VALUES('Amer','Ali','1996-10-22',6200,'2019-10-22',0)


--DROP TABLE R_User
--DROP TABLE R_HR


		

		



