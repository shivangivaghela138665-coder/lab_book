--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary.(use cursor for loop)

set serveroutput on
declare

	cursor cur2(dno number) IS select empname,deptno,basicsal,gross from employee where deptno=dno;
begin
	for r1 IN cur2(10)
	loop
	dbms_output.put_line('Ename: '||r1.empname||' Deptno: '|| r1.deptno||'salary: '|| r1.basicsal||'grosssal:'||r1.gross);
	end loop;
end;
/