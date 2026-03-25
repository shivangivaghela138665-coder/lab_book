--2. Write a PL/SQL block that explains the use of ZERO_DIVIDE exception.

set serveroutput on
declare
	A number:=&A;
	B number:=&B;
	res number;
begin
	dbms_output.put_line('value of A:'||A);
	dbms_output.put_line('value of B:'||B);
	res:=A/B;
	dbms_output.put_line('result :'||res);
EXCEPTION
	WHEN ZERO_DIVIDE THEN
	dbms_output.put_line('value of B must not be zero');
end;
/