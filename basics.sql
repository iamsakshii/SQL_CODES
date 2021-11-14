SHOW DATABASES;

CREATE DATABASE pastry_shop;
CREATE DATABASE school_students;
CREATE DATABASE employee;

DROP DATABASE employee;
DROP DATABASE school_students;

USE pastry_shop;

SELECT 1+1;
SELECT 'now we will recall datatypes and their syntax in sql' AS 'task-1';


SELECT 'to work with table' AS 'task-2';

CREATE TABLE menue(
    s_no INT,
    pastry_name VARCHAR(30),
    price INT

);

DESC menue;
SHOW TABLES;


INSERT INTO menue(s_no,pastry_name,price) VALUES (1,'choco_butter',80);

SELECT * FROM menue;

INSERT INTO menue(pastry_name,price) VALUES ('vanilla',65);
SELECT * FROM menue;

INSERT INTO menue(pastry_name,price) 
VALUES ('butter_cookie',85),('nut&cream', 75), ('red velvet',80);
SELECT * FROM menue;

INSERT INTO menue(s_no,pastry_name,price) VALUES (2,'honey and choco',70),(3,'mixed fruit',70);
INSERT INTO menue(s_no,pastry_name) VALUES (1,'vegan choclate pastry');

CREATE TABLE menue_2(
S_NO INT NOT NULL,
pastry_name varchar(30) NOT NULL,
price  INT NOT NULL);




INSERT INTO menue_2(S_NO,pastry_name,price) VALUES (1,'choco_butter',80);

SELECT * FROM menue_2;

INSERT INTO menue_2(pastry_name,price) VALUES ('vanilla',65);

SHOW WARNINGS;
SELECT * FROM menue_2;


INSERT INTO menue_2(pastry_name,price) VALUES ('butter_cookie',85),('nut&cream', 75), ('red velvet',80);
SELECT * FROM menue_2;

INSERT INTO menue_2(S_NO,pastry_name,price) VALUES (2,'honey and choco',70),(3,'mixed fruit',70);
INSERT INTO menue_2(S_NO,pastry_name) VALUES (1,'vegan choclate pastry');
INSERT INTO menue_2(s_no,price)
VALUES(44,1000);

CREATE TABLE menue_3(
 s_no INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (s_no),
    pastry_name VARCHAR(30) NOT NULL DEFAULT 'unavailable',
    price INT NOT NULL DEFAULT 1000
);
SELECT 'note' AS 'DEFAULT VALUE MUST MAINTAIN THE DATATYPE CRITERIA';
CREATE TABLE menue_4( 
 s_no INT NOT NULL ,
    pastry_name VARCHAR(30) NOT NULL DEFAULT 'unavailable',
    price INT NOT NULL DEFAULT 9999,
    PRIMARY KEY (s_no)
);



SHOW TABLES;


INSERT INTO menue_3 (s_no,pastry_name,price) VALUES (1,'choco_cream',90);
select*from menue_3;
INSERT INTO menue_3 (pastry_name,price) VALUES ('butter_cream',80);
select*from menue_3;
INSERT INTO menue_3(s_no,pastry_name,price) VALUES (1,'SSWSSS',46);
INSERT INTO menue_3 (s_no,pastry_name,price) VALUES (1,'red_velvet',90);




SELECT * FROM menue_3;
INSERT INTO menue_3(price) VALUES(40),(49),(55);
SELECT * FROM menue_3;
INSERT INTO menue_3 (pastry_name) VALUES ('banana pastry'), ('mixed fruit'), ('orange pastry');

INSERT INTO menue_3 (s_no, pastry_name, price) VALUES (0,' random pastry', 100);
select*from menue_3;
INSERT INTO menue_3 (s_no, pastry_name, price) VALUES (100,' surprise me', 100);

desc menue_3;


desc menue_4;
desc menue_2;
desc menue;
INSERT INTO menue_3(pastry_name,price) 
VALUES('xxxxx',38);

SHOW TABLES;

DROP menue;

SHOW TABLES;
DROP menue_4;

SHOW TABLES;
DROP menue_2;

SHOW TABLES;

























