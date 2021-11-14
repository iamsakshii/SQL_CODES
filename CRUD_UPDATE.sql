/*suddenly employees updated the details and f_name CHINKY has age 29 and l_name SINGH  has age= 26*/

UPDATE employee
SET age=29
WHERE f_name = 'CHINKY';

UPDATE employee
SET age= 26
 WHERE L_NAME = 'Singh'; 
 /* oops i did a mistake it was actully m_name but i entered l_name so i have four fields have chnaged, so  i will continue using this updated database*/
 
 UPDATE employee
 SET age=50
 WHERE m_name='singh';
 
 
/* the person whose first name is missing wants to update it*/


UPDATE employee
SET f_name = 'rajkumar'
WHERE f_name = '   ';
 
 /* NOT K SENSITIVE*/
 
 SELECT id_no AS ID, f_name AS 'first name',m_name as 'MIDDLE NAME', L_NAME AS 'LAST NAME', AGE FROM employee WHERE L_NAME ='SINGH';
 
   /* IM A CASTISIST BOST AND DONT LIKE SINGHS (DEFINITELY NOT IN REAL LIFE ) BUT I WANT TO FIRE THE PEOPLE WHOLE LAST NAME IS SINGH*/
UPDATE employee
SET curr_status = 'fired'
WHERE l_name= 'singh';
  /* when against equal to sigh its becomes k_sensitive*/
  
  UPDATE employee
SET curr_status = 'fired'
WHERE M_name ='singh';

