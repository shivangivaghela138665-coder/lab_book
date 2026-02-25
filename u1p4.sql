--program to delete record from employee
set serveroutput on
declare
	id number(3):=&id;
begin
	delete from employee where empid=id;
	dbms_output.put_line('record is deleted');
end;
/