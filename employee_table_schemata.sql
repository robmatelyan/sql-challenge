-- create tables

CREATE TABLE departments (
dept_no VARCHAR(30) ,
dept_name VARCHAR(50),
PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
title_id VARCHAR(30),
title VARCHAR(50),
PRIMARY KEY (title_id)
);

CREATE TABLE employees (
emp_no INT NOT NULL,
emp_title VARCHAR(50),
birth_date DATE,
first_name VARCHAR(30),
last_name VARCHAR(30),
sex VARCHAR,
hire_date DATE,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR(30),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(30),
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries