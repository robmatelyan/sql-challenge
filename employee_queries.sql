-- Query emp_no, last and first name, sex, and salary. Perform left join on emp_no
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
Left JOIN salaries AS s
ON e.emp_no=s.emp_no;

-- Query first and last names of employees hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >='1/1/1986'
AND hire_date <='12/31/1986'
ORDER BY hire_date;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT m.emp_no, m.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager AS m
LEFT JOIN departments AS d
ON m.dept_no=d.dept_no
JOIN employees AS e
ON e.emp_no=m.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, f.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS d
ON e.emp_no=d.emp_no
JOIN departments AS f
ON d.dept_no=f.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' 
AND last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, s.dept_name
FROM employees AS e
JOIN dept_emp AS d
ON e.emp_no=d.emp_no
JOIN departments AS s
ON s.dept_no=d.dept_no
WHERE dept_name='Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, s.dept_name
FROM employees AS e
JOIN dept_emp AS d
ON e.emp_no=d.emp_no
JOIN departments AS s
ON s.dept_no=d.dept_no
WHERE dept_name='Sales' OR dept_name='Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS total
FROM employees
GROUP BY last_name
ORDER BY total DESC


