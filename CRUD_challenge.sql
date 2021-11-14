CREATE DATABASE student_app;
USE student_app;
Create table students (
student_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(60),
    Branch VARCHAR(60),
    Avg_score INT NOT NULL,
    pass_status VARCHAR(10)
);

INSERT INTO students (name,Branch,Avg_score,Pass_status) 
Values ('Kavita','CSE',75,'PASS'), ('Shivani sharma','CSE',72,'PASS'), ('Deeksha','CSE',85,'PASS'), ('Riya','CSE',55,'FAIL'), ('Riddhy','CSE',35,'FAIL'), ('Rushmi','ECE',75,'PASS'), ('Sakshi','ECE',45,'FAIL'), ('Rittika','ECE',52,'FAIL'), ('Pinky','ECE',25,'FAIL'), ('Tanya','EEE',77,'PASS'), ('Akriti','EEE',65,'FAIL'), ('Pankhuri','EEE',42,'FAIL');

INSERT INTO students(name,Branch,Pass_status) Values ('Alfiya', 'CSE', 'FAIL'), ('Bhoomi','CSE','FAIL'),
('Reetu','ECE','FAIL'),('Shubhangi', 'EEE', 'FAIL');

SELECT * FROM students;
SELECT name, Avg_score from students;

SELECT name, Branch,student_id  FROM students
WHERE pass_status = 'PASS';

SELECT name AS 'FULL NAME', Branch AS 'BRANCH', pass_status AS 'PASSING STATUS'   FROM students
WHERE Branch = 'CSE';

UPDATE students
SET pass_status = 'PASS'
WHERE Avg_score >=40;

SELECT * FROM students;

UPDATE students
SET pass_status = 'FAIL'
WHERE Avg_score <=50 && Branch = 'ECE';

select * from students WHERE Branch ='ECE';

DELETE FROM students
WHERE Branch = 'ECE' && pass_status ='FAIL';

SELECT * FROM students WHERE Branch = 'ECE';

DELETE FROM students 
WHERE  pass_status = 'FAIL';

SELECT * From students;

DELETE FROM students;

SELECT * From students;








