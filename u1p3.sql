--write a program to display male employees working in hr dept from emp table
set serveroutput on
declare
	V_id employee.empid%type ;
	V_name employee.empname%type;
	V_dept employee.dname%type;
	V_sal employee.salary%type;
	V_gen employee.gender%type;

	
begin
	select empid,empname,dname,salary,gender into V_id,V_name,V_dept,V_sal,V_gen from employee where gender = 'M' and dname = 'HR';
	dbms_output.put_line('id is:'||V_id);
	dbms_output.put_line('name is:'||V_name);
	dbms_output.put_line('department is:'||V_dept);
	dbms_output.put_line('salaryy is:'||V_sal);
	dbms_output.put_line('Gender is:'||V_gen);
	
end;
/