select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from "Employee" as e 
join "Salaries" as s ON s.emp_no = e.emp_no;

select last_name,first_name,hire_date from "Employee" where EXTRACT (YEAR FROM hire_date) = 1986;


select d.dept_no,d.dept_name, e.emp_no, e.last_name,e.first_name from "Department_Managers" dm 
join "Departments" d ON d.dept_no = dm.dept_no join "Employee" e on e.emp_no = dm.emp_no;

select  e.emp_no, e.last_name,e.first_name, d.dept_name from "Department_Employee" de
join "Departments" d ON d.dept_no = de.dept_no join "Employee" e on e.emp_no = de.emp_no;

select first_name, last_name,sex from "Employee" where first_name = 'Hercules' and last_name like 'B%';

select  e.emp_no, e.last_name,e.first_name, d.dept_name from "Department_Employee" de
join "Departments" d ON d.dept_no = de.dept_no join "Employee" e on e.emp_no = de.emp_no where d.dept_name = 'Sales';

select  e.emp_no, e.last_name,e.first_name, d.dept_name from "Department_Employee" de
join "Departments" d ON d.dept_no = de.dept_no join "Employee" e on e.emp_no = de.emp_no 
where d.dept_name = 'Sales' or d.dept_name = 'Development';

select last_name, count(last_name) as total from "Employee" group by last_name order by count(last_name) DESC









