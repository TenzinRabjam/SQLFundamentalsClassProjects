DROP DATABASE IF EXISTS GENERIC_COMPANY;
CREATE DATABASE GENERIC_COMPANY;
USE GENERIC_COMPANY;

CREATE TABLE EMPLOYEE 
(
	EMPLOYEE_NUM INT PRIMARY KEY, 
	LAST_NAME CHAR(25), 
	FIRST_NAME CHAR(25), 
	MGR_EMPLOYEE_NUM INT
);

INSERT INTO EMPLOYEE (EMPLOYEE_NUM, LAST_NAME, FIRST_NAME, MGR_EMPLOYEE_NUM)
VALUES (108, 'Holden', 'Martin', NULL),
(198, 'Canzler', 'Mona', 108),
(206, 'Dykstra', 'Joan', 198),
(255, 'Murray', 'Steven', 301),
(301, 'Galvez', 'Benito', 108),
(366, 'Peterman', 'Beth', 198),
(391, 'Traynor', 'Matt', 301),
(402, 'Brent', 'Ashton', 301),
(466, 'Scholten', 'Alyssa', 108),
(551, 'Wiltzer', 'Morgan', 198);
