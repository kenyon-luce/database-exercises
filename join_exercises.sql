USE employees;

-- write a query that shows each department along with the name of the current manager for that department.
/*
current_dept_emp --> emp_no, dept_no, from_date, to_date
departments --> dept_no, [dept_name]
dept_emp --> emp_no, dept_no, from_date, to_date
dept_manager --> emp_no, dept_no, from_date, to_date
employees --> emp_no, birth_date, [first_name, last_name], gender
*/

SELECT * FROM dept_manager WHERE year (to_date)= 9999; --returns manager emp_no along with their dept_no (no names)

SELECT * FROM departments;

-- need department name and current manager for each department. I can only get department name from departments.dept_name and employee names from employees.name, its asking for managers only so I will need to connect it to dept_manager (like the code above), then fetch their dept_id which I will have to connect back to departments to get the name...geez
SELECT departments.dept_name, concat(first_name, ' ', last_name), departments.dept_no FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no JOIN departments ON dept_manager.dept_no = departments.dept_no WHERE year (to_date)= 9999 ORDER BY dept_no;

