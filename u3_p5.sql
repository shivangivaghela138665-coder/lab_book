--Write a PL/SQL block using a cursor to insert the records of employee in EMP_BACKUP table for given department number also raise a user defined exception NO_DEPT_EXIST when no records are found for entered DEPT_NO. (Use User Defined Exception)
set serveroutput on
declare
	xEID   NUMBER(38);
	xENAME  VARCHAR2(20);
	xDEPTNO   NUMBER(4) :=&xDEPTNO;
	xDEPTNAME  VARCHAR2(20) ;
	xGENDER    VARCHAR2(7);
	xage  NUMBER(4);
	xBASICSAL  NUMBER(6) ;
	xGROSS  NUMBER(6) ;
	dept_exc EXCEPTION;
	cursor e1 is select empid,empname,dname,gender,age,basicsal,gross INTO Xeid,Xename,Xdeptname,Xgender,xage,Xbasicsal,Xgross from employee where deptno=xdeptno;
begin
	open e1;
	loop
	
	
	fetch e1 into Xeid,Xename,Xdeptname,Xgender,Xage,Xbasicsal,Xgross;
	exit when e1%notfound;
	insert into emp_backup Values(Xeid,Xename,Xdeptno,Xdeptname,Xgender,Xage,Xbasicsal,Xgross);
	
	end loop;
	close e1;
	if xdeptno > 40 then
	Raise dept_exc;
	end if;
	
EXCEPTION

	WHEN dept_exc THEN
	dbms_output.put_line('department not found');
end;
/