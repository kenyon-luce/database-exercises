USE employees;

SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

/*mysql -u codeup_test_user -p < where_exercises.sql;*/