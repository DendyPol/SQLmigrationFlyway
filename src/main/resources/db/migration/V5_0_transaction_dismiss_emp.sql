delimiter //
create procedure dismisses_employee(in service_number int)
begin
  start transaction;
  update dept_emp
  set to_date = curdate()
  where emp_no = service_number;
  update salaries
  set to_date = curdate()
  where emp_no = service_number;
  update titles
  set to_date = curdate()
  where emp_no = service_number;
  commit;
end //
delimiter ;

call dismisses_employee(10004);
select *
from salaries
where emp_no = 10004;
