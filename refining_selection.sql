CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

/*refining selection*/


/*Distinct*/
SELECT DISTINCT author_fname from books;
SELECT DISTINCT author_lname from books;

/*it helps to filter out any duplicate entries/ does not lets repeat of same data while reading*/

/*DIStinct+CONCAT*/
/*print distinct author fullnames*/
SELECT DISTINCT( CONCAT(author_fname,' ',author_lname)) AS fullname
FROM books;

SELECT CONCAT(author_fname,' ', author_lname) AS fullname FROM books;

/*ORDER BY*/
SELECT * FROM books;

SELECT author_lname FROM books
ORDER BY author_lname; /*ascending by default and alpha numeric*/

SELECT title from books ORDER BY released_year;

SELECT title from books ORDER BY title DESC; /*order in descending order*/

SELECT * FROM books ORDER by released_year;


/*to order by number*/


SELECT title,author_fname,author_lname from books;

SELECT title,author_fname,author_lname from books /* number 2 describes the author_fname which is written at 2nd position*/
ORDER BY 2 ;

SELECT title,author_fname,author_lname from books 
ORDER BY 2 DESC;

SELECT title,author_fname,author_lname from books 
ORDER BY 2,1;/*2=author_fname,1=title*/

/*LIMIT*/ 

SELECT * FROM books;


SELECT title,released_year,book_id FROM books
ORDER BY released_year;

SELECT title,released_year,book_id FROM books
ORDER BY released_year DESC;

SELECT title,released_year,book_id FROM books
ORDER BY released_year DESC LIMIT 5; /*THIS will give all the latest books top 5*/

SELECT title,released_year,book_id FROM books
ORDER BY 2 DESC LIMIT 5,9; /*index where u want to start reading till index u will end*/ 

/*LIMIT 5, 18446740737099551615*/

SELECT title,released_year,book_id FROM books
ORDER BY 2 DESC LIMIT 5,18446740737099551615; 


/*LIKE*/

SELECT * FROM books WHERE title= 'The Namesake'; 

SELECT * FROM books WHERE title like 'The%'; 

SELECT * FROM books WHERE title like '%The%'; 
-> '%Name%' '%The' 'the%' '%%%'


SELECT title, author_fname from books WHERE author_fname like 'da%';

SELECT title, author_fname from books WHERE author_fname like '%av%'; /*AV OR Av or av all are same*/

SELECT title, author_fname from books WHERE author_fname like 'av'; /*empty set*/ 

/*WILD CARDS*/


/*let say i want to print books which has stock quantity as three digit number nothing specific*/ 

SELECT * FROM books WHERE stock_quantity LIKE '___'; /*100-999*/


SELECT * FROM books WHERE stock_quantity LIKE '__'; /*where stokc is in two digits i.e, 10-99*/ 


INSERT INTO books(title,author_fname,author_lname,released_year,stock_quantity,pages)
VALUES ('10%_Happier','Dan','Harris',2014,23,224);


SELECT * from books WHERE title LIKE '%\%%';
SELECT * from books WHERE title LIKE '%\_%';
/*to print a book which has underscore in its title*/ 

SELECT * FROM books
WHERE title LIKE '%\_%';
/* to print a book with percentage in title*/
SELECT * FROM books
WHERE title LIKE '%%%'; /*is this wrong? yes, this prints anything and everything*/ 

SELECT * FROM books
WHERE title LIKE '%\%%';/*correct command*/


SELECT * from books WHERE title LIKE '%%%';



/*Aggregate functions*/ 

/*count*/ 
SELECT COUNT(*) FROM books;

SELECT COUNT(book_id) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT CONCAT(author_fname,author_lname)) FROM books;

/*COUNT command basically gives total of any fields/all the fiels in the mannar applied*/

/* GROUP BY MOST AWAITD*/ 

/*GROUP BY SUMMARISES or aggregates identical data into single rows*/ 

SELECT author_fname,title,author_lname FROM books
GROUP BY author_lname;

SELECT author_lname, COUNT(*) FROM books
GROUP BY author_lname;
/*group by two different fields in case there is repeat of entry*/

SELECT author_fname,title,author_lname FROM books
GROUP BY author_lname,author_fname;

SELECT COUNT(*), author_lname FROM books
GROUP BY author_lname,author_fname;

/*min/max*/
SELECT MIN(stock_quantity) AS required , title FROM books;

/*sum*/ 

SELECT SUM(pages) FROM books;


SELECT SUM(pages) FROM books
GROUP BY author_lname,author_fname;

/* avg*/ 

SELECT AVG(pages) as 'avg pages', SUM(pages) as 'sum pages',concat_ws(' ', author_fname,author_lname) as 'author fullname' FROM books
GROUP BY concat_ws(' ', author_fname,author_lname);
/*___________________________________*/ 



select DISTINCT author_lname from books;
SELECT DISTINCT( concat(author_fname,' ',author_lname))
from books;



SELECT title, stock_quantity, released_year from books
ORDER by 3 DESC;




/*___________________________________*/





SELECT COUNT(*) AS 'TOTLA BOOKS WRITTEN', CONCAT_WS(' ',author_fname,author_lname) AS 'AUTHOR NAME' FROM books
GROUP BY CONCAT_WS(' ',author_fname,author_lname);


SELECT AVG(pages) as 'avg pages', SUM(pages) as 'sum pages',concat_ws(' ', author_fname,author_lname) as 'author fullname' FROM books
GROUP BY concat_ws(' ', author_fname,author_lname);





























