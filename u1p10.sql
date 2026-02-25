--write a program to calculate gross salary for given employee id
set serveroutput on
declare
	xeid number(4):=&empid;
	basic number(8,2);
	da number(8);
	hra number(8);
	medical number(3):=500;
	pf number(8);
	gross_sal number(8);	
begin
	select basicsal into basic from employee where empid=xeid;
	da:=basic*0.50;
	hra:=basic*0.15;
	pf:=basic*0.10;


gross_sal:=(basic+da+hra+medical)-pf;
update employee set gross=gross_sal where empid=xeid;
commit;

end;
/