USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
   SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
limit 400;

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
limit 400;


SELECT first_name, last_name
FROM employees
where emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'f'
    AND to_date = '9999-01-01'
    );

SELECT dept_name
FROM departments
where dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'f'
        AND to_date = '9999-01-01'
)
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary)
        FROM salaries

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