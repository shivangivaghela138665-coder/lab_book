--write a pl/sql block that uses %rowcount to display name,department, basicsal of first 5 emp getting highest sal

set serveroutput on
declare
	cursor def3 IS select empname,DNAME,basicsal from employee order by basicsal desc;
	nm employee.empname%TYPE;
	dnm employee.dname%TYPE;
	sal employee.basicsal%TYPE;
	n number;
begin
open def3;
loop
	fetch def3 into nm,dnm,sal;
	exit when def3%NOTFOUND;
	dbms_output.put_line('Name:'||nm);
	dbms_output.put_line('Department Name:'||dnm);
	dbms_output.put_line('basic salaray:'||sal);
	n:=def3%ROWCOUNT;
end loop;
close def3;
	dbms_output.put_line('total rows:'||n);

end;
/