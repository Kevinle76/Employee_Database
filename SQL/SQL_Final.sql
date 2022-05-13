-- CREATE TABLE titles(
-- 	title_id VARCHAR PRIMARY KEY,
-- 	title VARCHAR NOT NULL
-- );

-- CREATE TABLE departments(
-- 	dept_no VARCHAR PRIMARY KEY,
-- 	dept_name VARCHAR
-- );


-- REATE TABLE employees(
-- 	emp_no INT PRIMARY KEY,
-- 	emp_title_id VARCHAR NOT NULL,
-- 	birth_date VARCHAR NOT NULL,
-- 	first_name VARCHAR NOT NULL,
-- 	last_name VARCHAR NOT NULL,
-- 	sex VARCHAR NOT NULL,
-- 	hire_date VARCHAR NOT NULL,
-- 	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
-- );


-- CREATE TABLE dept_emp(
-- 	emp_no INT NOT NULL,
-- 	dept_no VARCHAR NOT NULL,
-- 	PRIMARY KEY (emp_no, dept_no),
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
-- );



-- CREATE TABLE salaries(
-- 	emp_no INT PRIMARY KEY,
-- 	salary INT NOT NULL,
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
-- );


-- CREATE TABLE dept_manager(
-- 	dept_no VARCHAR NOT NULL,
-- 	emp_no INT NOT NULL,
-- 	PRIMARY KEY (dept_no, emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
-- );

-- SELECT * FROM titles
-- SELECT * FROM departments
-- SELECT * FROM employees
-- SELECT * FROM dept_emp
-- SELECT * FROM salaries
-- SELECT * FROM dept_manager;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- SELECT e.emp_no,e.first_name, e.last_name, e.sex, s.salary
-- FROM employees AS e
-- JOIN salaries AS s
-- ON e.emp_no= s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT e.first_name, e.last_name, e.hire_date
-- FROM employees AS e
-- WHERE hire_date LIKE '%1986'

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.

-- SELECT de.dept_no, d.dept_name, de.emp_no,e.last_name, e.first_name
-- FROM dept_emp AS de
-- JOIN departments AS d
-- ON de.dept_no = d.dept_no
-- JOIN employees AS e
-- ON de.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

-- SELECT de.emp_no, e.first_name, e.last_name, d.dept_name
-- FROM dept_emp AS de
-- JOIN employees AS e
-- ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- ON de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."

-- SELECT first_name,  last_name,sex
-- FROM employees 
-- WHERE 
-- 	first_name = 'Hercules' 
-- AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department,
-- including their employee number, last name, first name, and department name.



-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees AS e
-- JOIN dept_emp AS de
-- ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- ON de.dept_no = d.dept_no
-- WHERE d.dept_no = 'd007'

-- 7. List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.

-- select * from departments

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees AS e
-- JOIN dept_emp AS de
-- ON de.emp_no = e.emp_no
-- JOIN departments AS d
-- ON de.dept_no = d.dept_no
-- WHERE d.dept_no = 'd007' OR d.dept_no= 'd005'

-- 8. List the frequency count of employee last names
-- (i.e., how many employees share each last name) in descending order.

-- SELECT last_name, COUNT(last_name)
-- FROM employees 
-- GROUP BY last_name
-- ORDER BY COUNT(last_name) DESC


