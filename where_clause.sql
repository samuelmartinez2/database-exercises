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


# ////////// Aliases  /////////////////

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;


# ////////////////// RELATIONSHIPS /////////////////////


SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Customer Service'
        )
    );

# //////////adding too date in order to get current employees////

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE YEAR(to_date) = 9999 AND dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Customer Service'
    )
);

SELECT dept_name
FROM departments
Where dept_no IN (
    SELECT dept_no
    FROM dept_emp
    WHERE emp_no IN (
        SELECT emp_no
        FROM salaries
        WHERE salary IN (
            SELECT MAX(salary)
            FROM salaries
            WHERE YEAR(to_date
                      ) = 9999
        )
    )
    );

SELECT d.dept_name, s.salary
FROM departments d
JOIN dept_emp de on d.dept_no = de.dept_no
JOIN salaries s on de.emp_no = s.emp_no
ORDER BY s.salary DESC
LIMIT 1;