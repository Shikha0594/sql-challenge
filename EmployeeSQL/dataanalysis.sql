--List emp_no the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date >='01/01/1986'
And hire_date < '01/01/1987';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, 
	employees.emp_no, employees.last_name, 
	employees.first_name
FROM employees
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
JOIN departments ON departments.dept_no=dept_manager.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name , sex 
from employees
where first_name like 'Hercules'
and last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.



SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name='Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name in ('Sales','Development');


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name,
count(last_name) as "count_ln"
from employees 
group by last_name
order by "count_ln" desc;
