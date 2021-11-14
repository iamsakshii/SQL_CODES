/* all the peopel who are above age of 45 are getting fired*/

DELETE FROM employee
WHERE age>45;

SELECT * FROM  employee ;

/* all the people who's curr_status int the database is fired, there names are getting being removed from database*/

DELETE FROM employee 
WHERE curr_status = 'fired';

SELECT * FROM employee;

/*there were so many less employess in the company that company had to shut down so delete the table 'employee' and then drop the database ' my_app'*/

DROP TABLE employee;
SHOW TABLES;

/*exit & restart to drop database */

DROP DATABASE my_app;

