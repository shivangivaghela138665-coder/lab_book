--3. Write a PL/SQL block to accept employee name from a user if it is exist display his/her basic salary otherwise display appropriate message using exception handling.

--no data found exception
set serveroutput on
declare
	xeid number(38);
	enm char(20):='&enm';
	dno number(4);
	sal number(6);
begin
	select empname,deptno,basicsal INTO enm,dno,sal from employee where empname=enm;
	dbms_output.put_line('Employee id:'||xeid);
	dbms_output.put_line('Department no:'||dno);

	dbms_output.put_line('Employee Salary:'||sal);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('Employee name entered by u not found in emp table:');

end;
/