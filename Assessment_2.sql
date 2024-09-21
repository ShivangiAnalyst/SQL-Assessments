-- Assessment 2

Create Database Nelson ;

Use Nelson ;

-- 1 To display all the records form student table. 

SELECT * FROM STUDENT ; 

-- 2. To display student name and date of birth from the table student. 

SELECT STUDENT_NAME, DOB FROM STUDENT ; 

-- 3. To display all students record where percentage is greater of equal to 80 from student table.
 
SELECT * FROM STUDENT WHERE percentage >= 80; 

-- 4. To display student name, stream and percentage where percentage of student is more than 80.

SELECT STUDENT_NAME, STREAM, PERCENTAGE FROM STUDENT WHERE PERCENTAGE > 80; 

-- 5. To display all records of science students whose percentage is more than 75 form student table. 

SELECT * FROM STUDENT WHERE STREAM = "Science" AND PERCENTAGE > 75;