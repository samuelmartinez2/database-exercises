USE employees;

SELECT * FROM employees WHERE first_name LIKE '%z';

SELECT * FROM employees WHERE first_name LIKE '%tine';

SELECT * FROM employees WHERE first_name LIKE '%ee%';

SELECT * FROM employees WHERE last_name IN ('Herber','Dredge','Lipner','Baek');

SELECT emp_no, title, to_date
FROM titles
WHERE to_date IS NULL;

SELECT * FROM employees
WHERE last_name IN ('Herber','Dredge','Lipner','Baek')
AND hire_date LIKE '198%';

SELECT * FROM employees
WHERE last_name IN ('Herber','Dredge','Lipner','Baek')
  AND hire_date LIKE '198%-08-%22';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber','Baek')
   OR first_name = 'Shridhar';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
    AND (
            last_name IN ('Herber', 'Baek')
        OR first_name = 'Shridhar'
    );


# ////////////////ORDER BY LECTURE/////////////////

SELECT * FROM employees.employees WHERE first_name='Kristine' ORDER BY last_name;# [ASC or DESC]

SELECT * FROM employees.employees WHERE emp_no < 20000 ORDER BY last_name DESC,first_name ASC, emp_no DESC;


# //////////////  LIMIT and OFFSET   //////////////

SELECT * FROM employees.employees WHERE last_name = 'Oxenboll' LIMIT 5;

SELECT * FROM employees.employees WHERE last_name = 'Oxenboll' LIMIT 5 OFFSET 5;


# ////////// FUNCTIONS   /////////////////

SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT CURTIME();

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 1959
  AND month(birth_date) = 7
  AND day(birth_date) = 4;


SELECT CONCAT(
               'Teaching people to code for ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );


# ////////// GROUP BY  /////////////////

SELECT DISTINCT first_name
FROM employees;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;

SELECT COUNT(*) FROM employees;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name LIKE 'a%'
GROUP BY first_name
ORDER BY COUNT(first_name) DESC;