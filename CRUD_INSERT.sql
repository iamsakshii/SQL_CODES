CREATE DATABASE my_app;
USE my_app;
CREATE TABLE employee(
    id_no INT NOT NULL AUTO_INCREMENT, 
    PRIMARY KEY(id_no),
    f_name VARCHAR(20) NOT NULL,
    l_name VARCHAR (20) NOT NULL,
    m_name VARCHAR(20),
    age INT NOT NULL,
    curr_status VARCHAR(50) NOT NULL DEFAULT 'employed'
);
INSERT INTO employee (f_name,m_name,l_name,age) VALUES ('Ram','Kumar', 'Sharma', 35);
SELECT* FROM employee;
/*ALWAYS PUT VARCHAR VALUES IN SINGLE QUOTES*/

INSERT INTO employee (f_name,m_name,l_name,age) VALUES ('RaNI','KumarI', 'PATEL', 30), ('HONEY','BUNNY', 'SUNNY', 40),('Preta','Dhillon','Bisht',26);

INSERT INTO employee(f_name, l_name, age, curr_status) VALUES('sakshi','yadav',22,'employed'),('shivangi','singh',28, 'fired'),('deepti', 'bharti', 26,'fired'),('kushbu', 'singh',29,'employed'),('shikha','sharma',21, 'intern'),('satakshi','aithani',20,'intern'),('dular', 'roy',25,'part-time employee');
INSERT INTO employee(f_name,m_name, l_name, age, curr_status) VALUES ('jigyasa','kumari','singh',30,'part-time employee'),('santa','san','ben',33, 'fired'), ('divya','kaur','singh',23, 'intern');


/*ALWAYS REMEMBER YOU CANNOT WRITE A FILED_NAME & SKIP IT IN THR VALUES_PORTION THO U CAN IGNORE FIELD_NAME IN THE DECLARATION PART*/

INSERT INTO employee(f_name,m_name, l_name, age, curr_status) VALUES('helena',,'roy',33,'fired');

SELECT*FROM employee;

INSERT INTO employee(l_name,m_name) VALUES('happy', 'singh');
INSERT INTO employee(l_name,f_name) VALUES ('PINKY', 'CHINKY');

SELECT * FROM employee;


















