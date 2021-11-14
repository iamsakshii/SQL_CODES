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

/*string functions*/

/*CONCAT*/
SELECT CONCAT ('hello', ' world');
SELECT CONCAT ('hello','...', ' world') AS result;
SELECT CONCAT (author_fname, author_lname) AS 'AUTHOR FULL NAME' FROM books; /* DONT PUT FIELD NAME IN QUOTES*/
SELECT title, CONCAT (author_fname, author_lname) AS 'AUTHOR FULL NAME', released_year FROM books;
SELECT book_id,CONCAT (author_fname, author_lname,' HAS WRITTEN ', title) AS 'DESCRIPTION', released_year FROM books;

/*CONCAT_WS*/
SELECT CONCAT_WS('-','HELLO','WORLD','IAM','SAKSHI');
SELECT CONCAT_WS('-',author_fname,author_lname,title) AS 'DESCRIPTION' FROM  books;
SELECT CONCAT_WS(' ',author_fname,author_lname,'is my favorite author',title, 'YAY!!') AS 'DESCRIPTION' FROM  books;


/*SUBSTRING*/

SELECT SUBSTR('HELLO WOrld',1,4); /*1 to 4 characters are present on the output*/
SELECT SUBSTR('HELLO WOrld',4); /*all the elements after 7th index*/
SELECT SUBSTR('HELLO WOrld',-4); /*prints 3 elements in reverse order i.e., back to front*/
SELECT SUBSTR(title,1,10) FROM books;

/*substr + concat */
 
SELECT 
CONCAT
(SUBSTR(title,1,10),'.....')
FROM books;


/*REPLACE*/
SELECT REPLACE('HELLO world','HELL', '**$%@');
SELECT REPLACE('heLLO world','HELL', '**$%@'); /*will not have nay effect as its case sensitive command*/
SELECT REPLACE('heLLO world','heLL', '**$%@'); /*corrected version */
SELECT REPLACE (title, 'e',99) FROM books;
 
 /*REPLACE + SUBSTR*/
 
 SELECT 
 SUBSTR( 
     REPLACE (title,'e',99),1,10
 ) AS wierd FROM books;

/*SUBSTR+CONCAT+REPLACE*/ 

 SELECT 
 CONCAT(
    SUBSTR( 
                 REPLACE (title,'e',99),1,10
             ), '........'
       )
 AS wierd FROM books;
 
 /*REVERSE*/
 
 SELECT REVERSE ('HELLO WORLD');
 SELECT REVERSE ('MEEOW');
 SELECT REVERSE (title) FROM books;
SELECT REVERSE (title), author_fname,author_lname FROM books;
SELECT CONCAT('woof', REVERSE ('woof'));

/*UPPER AND LOWER*/

SELECT UPPER ('hello WORLD');
SELECT LOWER ('hello WORLD');
SELECT UPPER (title) FROM books;


/*CHAR_LENGTH*/
SELECT CHAR_LENGTH('HELLO WORLD');
SELECT CHAR_LENGTH(CONCAT(author_fname,author_lname)) AS 'length of author fullname' FROM books;

/*MIXED BAG*/


 SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
 
 SELECT CONCAT_WS(' ', author_fname, ' is ', CHAR_LENGTH(author_fname), 'long') AS 'description' FROM books;
 
 
 SELECT UPPER(CONCAT_WS( ' ',author_fname, author_lname, 'iS the fullname of length', CHAR_LENGTH(CONCAT(author_fname,author_lname)) ))AS 'IN CAPS' FROM books;
 
 SELECT CONCAT(SUBSTR(title,1,10),'....') AS 'title', UPPER( CONCAT_WS('-',author_fname,author_lname, REPLACE('my favourite author','favour','******'))) AS 'author description' FROM books;
 
 /*reverse all author firstname such and join with themseleves such that they become palindrom*/
 
 SELECT CONCAT(author_fname, REVERSE(author_fname)) AS 'PALINDROM' FROM books;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









