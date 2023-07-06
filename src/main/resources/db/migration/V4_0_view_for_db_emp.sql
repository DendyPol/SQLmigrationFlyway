create or replace view avg_salary_departments as
select avg(salary)
from salaries
       left join employees using (emp_no)
       left join dept_emp on dept_emp.emp_no = employees.emp_no
       left join departments on departments.dept_no = dept_emp.dept_no;

create or replace view max_salary_employee as
select max(salary), concat(last_name, ' ', first_name) 'full_name'
from employees
       left join salaries using (emp_no)
where salary in (select max(salary)
                 from salaries)
group by full_name;

create or replace view number_of_employees_for_departments as
select count(employees.employees.emp_no)
from employees;

create or replace view salary_department as
select dept_name, count(dept_emp.emp_no) count_employees, sum(salary) money_dept
from departments
       left join dept_emp using (dept_no)
       left join salaries on dept_emp.emp_no = salaries.emp_no
group by dept_name
order by money_dept desc;
