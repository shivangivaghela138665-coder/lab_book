--write a program to calculate discount
set serveroutput on
declare
	xid number(2):=&xid;
	xname char(15);
	xqty number(5);
	xprice number(5);
	tbill number(5);
begin
	select proname,qty,price into xname,xqty,xprice from product where proid=xid;
	tbill:=xqty*xprice;
	update product set totalbill=tbill where proid=xid;
	if tbill<5000 then
	update product set discount=0 where proid=xid;
	elsif tbill>=5000 and tbill<8000 then
	update product set discount=totalbill*0.05 where proid=xid;
	elsif tbill>=8000 and tbill<15000 then 
	update product set discount=totalbill*0.10 where proid=xid;
	elsif tbill>=15000 then
	update product set discount=totalbill*0.15 where proid=xid;
	else
	update product set discount=0 where proid=xid;
	end if;
end;
/