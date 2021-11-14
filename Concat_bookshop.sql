/* learn concat*/
SELECT CONCAT('HELLO', 'WORLD');
SELECT CONCAT ('heLLO', '.......', 'WOrld');
SELECT  book_id,CONCAT(author_fname,' ', author_lname),title FROM books;
SELECT  book_id,CONCAT(author_fname,' ', author_lname)AS 'author name',title FROM books; /*multiple concat*/
/*CONCAT_WS : used when you want to repeat something between the fields getting CONCATED*/

SELECT CONCAT_WS ('-',book_id, author_fname, author_lname, title, released_year) FROM books;
/* the first term in CONCAT_WS command gets repeated like '-' is getting repeated in the output here*/


/*substring*/
/*1st method*/
SELECT SUBSTRING('hello ','world',1,4); /*1-4 elements are returend on output*/

/*2ND */
SELECT SUBSTRING ('HELLO', ' WORLD',7); /*ALL ELEMENTS AFTER 7TH INDEX*/

/*3RD*/
SELECT SUBSTRING('HELLO','world',-3); /*COUNTS AND PRINTS ELEMENTS FROM THE END TO FORWARD*/

/* USING SUBSTRING IN TBALE books*/

SELECT SUBSTRING(title,1,10) AS 'small title'  FROM  books;

/*concat+substring*/ 
SELECT CONCAT(SUBSTRING(title,1,10),'...') AS 'small title'  FROM  books;


 /* REPLACE*/
 
 SELECT REPLACE('HELlo WORLD', 'HELlo', '#$$^^#');
 
 SELECT  REPLACE (title,'e', 3) FROM books; /* REPLACE IS CASE SENSITIVE*/ 
 
 SELECT UPPER('hello MY name is SAKSHI');
 SELECT LOWER('your MENTOR');
 
 
 



