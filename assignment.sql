mysql-ctl cli /*to stoop sql server*/

CREATE DATABASE hw_students;
USE hw_students;


CREATE TABLE students_data(
roll_no INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL DEFAULT 'UNKNOWN',
last_name VARCHAR(30) ,
class_rank INT NOT NULL );


DESC students_data;



INSERT INTO students_data (first_name,last_name,class_rank)
VALUES ('Kavita','Gupta',17),('Vidya','Balan',3),('Nidhi','Sharma',27),('Riya','Kumar',12);

SELECT * FROM students_data;


INSERT INTO students_data (first_name,class_rank)
VALUES ('Drishti',7),('Samiksha',1),('Poornima',6),('Kavya',25);



INSERT INTO students_data (class_rank)
VALUES (2),(15);



INSERT INTO students_data (first_name,last_name,class_rank)
VALUES ('Harshita','Mehra',4),('Avni','Chaturvedi',5),('Nidhi','KUmari',8),('Pawan','Kumar',10);


/*bonus*/

SELECT roll_no,first_name,class_rank FROM students_data;


SELECT roll_no as 'Roll number', first_name as 'First name', last_name as 'Last name', class_rank as 'Rank' FROM students_data;


/*TEACHER'S TABLE*/





CREATE TABLE Teachers(
id_no INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(60) NOT NULL DEFAULT 'UNKNOWN USER',
    Address VARCHAR(100),
    Age INT NOT NULL
);


INSERT INTO Teachers(Name, Address, Age)
VALUES ('Priety Goel','Shimla Road, Himachal Pradesh',35),('Sunil Kumar Verma','Lodhi Road,New Delhi',28),('Priyanka','Tonk,Rajasthan',31);

INSERT INTO Teachers(Name)
VALUES ('Anshika kapoor');



INSERT INTO Teachers( Address, Age)
VALUES ('Dwarka, Delhi',25),('Tonk,Rajasthan',38);

INSERT INTO Teachers(Name, Age)
VALUES ('Sakshi',28),('Sangam Jha',31);

SELECT * FROM Teachers;


SELECT  id_no, Name, IFNULL(Address,'N/A') AS 'Address', Age FROM Teachers;


/*pastry_shop*/

CREATE TABLE menu(
 s_no INT NOT NULL AUTO_INCREMENT,
    pastry_name VARCHAR(30) NOT NULL DEFAULT 'unavailable',
    price INT NOT NULL DEFAULT 9999,
    PRIMARY KEY (s_no)
);

SELECT * FROM menu;

INSERT into menu (pastry_name,price)
VALUES ('Vanilla pastry',70),('Butter cookie pastry',78),('Chocolate pastry',88),('Cream & nut pastry',99),('Light vegan pastry',99),('Red velvet pastry',89);



INSERT into menu (s_no,pastry_name,price)
VALUES (100,'Fruit & nut pastry',88),(150,'Mixed fruit pastry ',85),(9,'Honey cream pastry',76);

INSERT into menu (pastry_name,price)
VALUES ('Dark forest pastry',89),('mango pastry',75);



INSERT into menu (price)
VALUES (88),(90),(76);

INSERT into menu (pastry_name)
VALUES 
('Strawberry pastry'),('Ice cream and pastry combo');






































