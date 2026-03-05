--write a pl/sql block that uses a cursor attribute %isopen and %not found(def2)
set serveroutput on
declare
	cursor def2 is select basicsal from employee where deptno=20;
	sal employee.basicsal%type;
	increment number;
begin
open def2;
if def2%isopen then
loop
	fetch def2 into sal;
	exit when def2%notfound;
	increment:=sal*0.20;
	update employee set basicsal= sal+increment where deptno = 20;
end loop;
dbms_output.put_line('basicsal updated');
close def2;
else
	dbms_output.put_line('cursor is not open');
end if;
end;
/ 