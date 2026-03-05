--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary.(parameterised cursor)


set serveroutput on
DECLARE
	Cursor c1(xdeptno number) IS select empname,deptno,basicsal,gross from employee where deptno= xdeptno;
	x c1%ROWTYPE; --rowtype then use cursor name as a tablename
BEGIN
	Open c1(40);
	loop
	fetch c1 INTO x;
	exit when c1%NOTFOUND;
	dbms_output.put_line('Ename: '|| x.empname||' Deptno: '|| x.deptno||'salary: '|| x.basicsal||'grosssal:'||x.gross);
	end loop;
	close c1;
END;
/