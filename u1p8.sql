--write a program to generate the numbers using for,loop,and while loop
--while
set serveroutput on
declare
	i number(1):=1;
	n number:=&n;
	x number:=1;

begin
	while i<=n
	loop
	dbms_output.put_line(i);
	i:=i+1;
	end loop;
	dbms_output.put_line('example of for loop');
	for i in 1..n
	loop
	dbms_output.put_line(i);
	end loop;
	dbms_output.put_line('example of loop');
	loop
	dbms_output.put_line(x);
	x:=x+1;
	exit when x>5;
	end loop;
end;
/