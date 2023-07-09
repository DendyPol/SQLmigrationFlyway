explain
select dept_name, count(dept_emp.emp_no) count_employees, sum(salary) money_dept
from departments
       left join dept_emp using (dept_no)
       left join salaries on dept_emp.emp_no = salaries.emp_no
where dept_emp.to_date = '9999-01-01'
  and salaries.to_date = '9999-01-01'
  and dept_name = 'Development'
group by dept_name
order by money_dept desc;
