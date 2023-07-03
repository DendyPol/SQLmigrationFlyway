select avg(salary)
from salaries
       left join employees using (emp_no)
       left join dept_emp on dept_emp.emp_no = employees.emp_no
       left join departments on departments.dept_no = dept_emp.dept_no;

select max(salary), concat(last_name, ' ', first_name) 'full_name'
from employees
       left join salaries using (emp_no)
where salary in (select max(salary)
                 from salaries)
group by full_name;

delete employees
from employees
       left join salaries using (emp_no)
where salary in (select max(salary)
                 from salaries);

select count(employees.employees.emp_no)
from employees;

select dept_name, count(dept_emp.emp_no) count_employees, sum(salary) money_dept
from departments
       left join dept_emp using (dept_no)
       left join salaries on dept_emp.emp_no = salaries.emp_no
group by dept_name
order by money_dept desc;
