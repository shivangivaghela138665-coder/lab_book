--write a pl/sql block using a cursor for loop to display name and the basic salary of top 3 highest paid employees(use cursor for loop)
set serveroutput on
begin
	for r1 in (select empname,basicsal from (select empname,basicsal from employee order by basicsal desc) where rownum<=3)
	loop
	dbms_output.put_line('name:'||r1.empname);
	dbms_output.put_line('salary:'||r1.basicsal);
	end loop;
end;
/