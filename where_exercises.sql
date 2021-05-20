USE employees;

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M';
/*^includes Fs*/

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name !LIKE '%q%';
/*how to get no '%qu%'?*/

/*mysql -u codeup_test_user -p < where_exercises.sql;*/