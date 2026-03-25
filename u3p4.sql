--4. Write a PL/SQL block to display the salary of that employee whose age is 45 year otherwise display appropriate message using exception handling.
set serveroutput on
declare
	xeid number(2);
	xenm char(20);
	xage number(2):=45;
	xsal number(8);
begin
	select eid,name,sal INTO xeid,xenm,xsal from emp where age=45;
	dbms_output.put_line('Employee id:'||xeid);
	dbms_output.put_line('name:'||xenm);

	dbms_output.put_line('Employee Salary:'||xsal);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('entered employee age is not 45');
end;
/