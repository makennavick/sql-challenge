-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM 
	employees AS e 
INNER JOIN 
	salaries AS s ON(e.emp_no = s.emp_no)


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT  
	m.dept_no, 
	d.dept_name, 
	e.emp_no, 
	e.last_name, 
	e.first_name
FROM 
	dept_manager AS m
INNER JOIN 
	employees AS e ON (e.emp_no=m.emp_no)
INNER JOIN 
	departments AS d ON (d.dept_no=m.dept_no)


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT  
	d.dept_no, 
	e.emp_no,
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM 
	employees AS e
INNER JOIN 
	dept_emp AS de ON (de.emp_no=e.emp_no)
INNER JOIN 
	departments AS d ON (d.dept_no=de.dept_no)


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
	first_name,
	last_name,
	sex
FROM 
	employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%'

	
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT * FROM DEPARTMENTS -- we can see the sales dept is d007 (identifying it visually prevents the need to do two joins in the next query)

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name
FROM 
	employees AS e
INNER JOIN 
	dept_emp AS d ON (d.emp_no=e.emp_no)
WHERE 
	d.dept_no='d007'


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM 
	employees AS e
INNER JOIN 
	dept_emp AS de ON (de.emp_no=e.emp_no)
INNER JOIN 
	departments AS d ON (d.dept_no=de.dept_no)
WHERE 
	d.dept_name='Sales' OR d.dept_name='Development'


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS frequency 
FROM employees 
GROUP BY last_name
ORDER BY frequency DESC