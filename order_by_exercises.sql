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

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

