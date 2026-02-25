--program to take user input and print square,cube of num
set serveroutput on
declare
 	n1 number(3):=&n1;
	square number;
	cube number;
begin
	square:=n1*n1;
	dbms_output.put_line('square is: '||square);
	cube:=n1*n1*n1;
	dbms_output.put_line('cube is: '||cube);
end;
/
