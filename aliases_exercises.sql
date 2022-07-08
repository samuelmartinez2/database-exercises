USE employees,

SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
    LIMIT 10;

SELECT CONCAT(last_name, ' ', first_name) AS full_name,
       CONCAT(birth_date) AS DOB
FROM employees
GROUP BY full_name, last_name, DOB
ORDER BY last_name
LIMIT 10;

SELECT CONCAT(emp_no,' - ',last_name, ' ', first_name) AS full_name,
       CONCAT(birth_date) AS DOB
FROM employees
GROUP BY full_name, emp_no, DOB
ORDER BY emp_no
LIMIT 10;