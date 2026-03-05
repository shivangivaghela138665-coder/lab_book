--write a pl/sql block that uses a cursor attribute %isopen and %notfound to raise the basic salary of employees of department number 20 by 5% with implicit cursor
set serveroutput on
begin
	update employee set basicsal=basicsal+(basicsal*0.05) where deptno=20;
	if sql%isopen then
		dbms_output.put_line('cursor is open');
	end if;
	if sql%notfound then
		dbms_output.put_line('cursor is closed');
	else
	dbms_output.put_line('total updated records:'||sql%rowcount);
	end if;
end;
/