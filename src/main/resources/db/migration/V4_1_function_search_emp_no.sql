delimiter //
create function search_emp_no(name varchar(50), second_name varchar(50)) returns int
  deterministic
begin
  declare result int;
  set result = (select emp_no
                from employees
                where first_name = name
                  and last_name = second_name);
  return ifnull(result, 0);
end //
delimiter ;

select search_emp_no('IEEE', 'Babu');

select search_emp_no('Vasiliy', 'Shopin');
