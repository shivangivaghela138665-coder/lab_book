--Write a PL/SQL block to accept student name from a user if it is exist display his/her result from RESULT table otherwise display appropriate message using exception handling.

set serveroutput on
declare
	xrn number(3);
	xnm char(20):='&xnm';
	xres number(3);

begin
	select rollno,per INTO xrn,xres from res where name=xnm;
	dbms_output.put_line('roll no:'||xrn);
	dbms_output.put_line('result is:'||xres);

EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('student name entered by u not found in table:');

end;
/