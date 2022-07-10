-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salary s on
e.emp_no = s.emp_no;

-- List first name, last name, and hire date 
-- for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date >= '19860101'
and hire_date <= '19861231'
order by hire_date;


-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name.

select dm.dept_no, d.dept_name, dm.emp_no as manager_emp_no, e.first_name, e.last_name
from dept_manager dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employees e
on dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

select de.emp_no, e.first_name, e.last_name, d.dept_name
from dept_emp de
inner join employees e
on de.emp_no = e.emp_no
inner join departments d
on de.dept_no = d.dept_no;

-- List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."

select e.first_name, e.last_name, e.sex
from employees e
where first_name = 'Hercules'
and last_name like 'B%';

-- List all employees in the Sales department, including 
-- their employee number, last name, first name, and department name.

select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
inner join employees e
on de.emp_no = e.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including 
-- their employee number, last name, first name, and department name.

select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
inner join employees e
on de.emp_no = e.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

select last_name, count(*)
from employees
group by last_name
order by count desc; 