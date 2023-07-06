delimiter //
create trigger add_bonus
  after insert
  on employees
  for each row
begin
  insert salaries
  values (new.emp_no, 180000, curdate(), curdate());
end //
delimiter ;

insert salaries
values (11010, 180000, curdate(), curdate());

select *
from salaries
where emp_no = 11010
  and salary = 180000;
