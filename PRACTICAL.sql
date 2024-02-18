create database ufo;
use ufo;
CREATE TABLE employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(50) NOT NULL,
    ecity VARCHAR(50),
    salary DECIMAL(10, 2),
    eaddress VARCHAR(100)
);
INSERT INTO employee (eid, ename, ecity, salary, eaddress)
VALUES
    (1, 'Rahul', 'delhi', 50000.00, '123 Main St'),
    (2, 'saksham', 'mp', 60000.50, '456 Elm Ave'),
    (3, 'raju', 'hr', 55000.75, '789 Oak Rd'),
    (4, 'vinesh', 'assam', 65000.25, '321 rk puram'),
    (5, 'Robert', 'kerla', 52000.00, '987 Maple Dr'),
    (6, 'Sophia ', 'hp', 58000.00, '654 hudsonlane'),
    (7, 'deepak', 'bihar', 59000.50, '246 church road'),
    (8, 'civics', 'punjab', 54000.75, '135 rk puram sector 132');
    
select ename from employee where ecity = 'delhi';
SET sql_safe_updates =0;
update employee set salary = salary +5000;
select 8 from employee;
SELECT REVERSE(ename)
FROM employee;

select concat("ename"," ","ecity") from employee;

select * from employee order  by ename desc;

desc employee;


CREATE TABLE dept (
    name varchar (223),
    id int,
    location varchar(223)
   
);
insert into dept (name,id,locAtion) values ("Rahul",1,"delhi"),("sharma",2,"mumbAI"),("TANISH",3,"NEWYORK");
SELECT * FROM DEPT;

-- First, alter the EMPLOYEE table to add the DEPARTMENT_ID column
ALTER TABLE EMPLOYEE
ADD DEPARTMENT_ID INT;
SELECT * FROM EMPLOYEE;
DESC EMPLOYEE;
-- Next, create the foreign key constraint
ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_EMPLOYEE_DEPARTMENT
FOREIGN KEY (DEPARTMENT_ID)
REFERENCES DEPT (ID);

DROP TABLE IF EXISTS DPET;



#-----------------------------------------------------------------------------------------------------

CREATE DATABASE py;
SHOW DATABASES;
USE py;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25));

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
select * from worker;
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
select * from bonus;

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

DROP TABLE IF EXISTS TITLE;







