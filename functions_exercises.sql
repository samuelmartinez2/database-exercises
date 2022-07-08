USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, last_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name, emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name, emp_no;




# SELECT * FROM employees WHERE last_name LIKE ('%q%');


SELECT emp_no, first_name, last_name
FROM employees
WHERE  first_name = 'Irena'
   OR first_name ='Vidya'
   OR first_name = 'Maya';

SELECT emp_no, first_name, last_name
FROM employees
WHERE  gender = 'M'
  and (
            first_name = 'Irena'
        OR first_name ='Vidya'
        OR first_name = 'Maya'
    );

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';


SELECT emp_no,first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';


SELECT emp_no, CONCAT (first_name, last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;


SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC;

SELECT * , DATEDIFF (NOW(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY DATEDIFF(NOW(), hire_date);
