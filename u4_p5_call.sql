--calling program

--call function
declare
	ano number:=&ano;
	amt number;
begin
	amt:=fun_Bal(ano);
	dbms_output.put_line(amt);
end;
/