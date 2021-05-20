USE employees;

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';
/*
^^includes Fs
update: fixed by wrapping all my OR queries with parenthesis
*/

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%';
/*
how to get no '%qu%'?
update: fixed using NOT LIKE query
*/

/*mysql -u codeup_test_user -p < where_exercises.sql;
  (or log into root in terminal and copy paste each SELECT query)
*/