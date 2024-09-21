-- Assessment 1

Create Database Syntax ;

Use Syntax ;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 

SELECT * FROM WORKER ORDER BY FIRST_NAME ASC, Department DESC ;

/* 2.Write an SQL query to print details for Workers with the first names 
“Vipul” and “Satish” from the Worker table. */

SELECT * FROM WORKER WHERE FIRST_NAME IN ("VIPUL","SATISH");

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 

SELECT * FROM WORKER WHERE FIRST_NAME LIKE "_____H" ;

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 

SELECT * FROM WORKER WHERE SALARY BETWEEN 1 AND 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

SELECT * FROM WORKER
WHERE (FIRST_NAME, LAST_NAME, DEPARTMENT) IN (
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT FROM WORKER
GROUP BY FIRST_NAME, LAST_NAME, DEPARTMENT
HAVING COUNT(*) > 1);

-- 6. Write an SQL query to show the top 6 records of a table. 

SELECT * FROM WORKER LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them. 

SELECT DEPARTMENT FROM WORKER GROUP BY DEPARTMENT HAVING COUNT(*) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there. 

SELECT DEPARTMENT, COUNT(*) AS NUMBER_OF_PEOPLE FROM WORKER GROUP BY DEPARTMENT;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department. 

SELECT FIRST_NAME, DEPARTMENT, SALARY
FROM WORKER
WHERE (DEPARTMENT, SALARY) IN (
    SELECT DEPARTMENT, MAX(SALARY)
    FROM WORKER
    GROUP BY DEPARTMENT
);