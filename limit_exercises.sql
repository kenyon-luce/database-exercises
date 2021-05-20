USE employees;

SELECT DISTINCT title FROM titles;
/*returns 10 unique titles (no repeats)*/

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;
/*returns 10 unique names (no repeats) in descending order*/

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;
/*
 because of the LIMIT query, we can view each 5 elements as a page, with OFFSET of 5 we will be counting from the 5th element, giving us our "second page", and so on.
 offset = (limit * page) - limit
 Since we want the get the tenth page, our OFFSET is 45.
 */