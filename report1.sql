declare
cursor data_cur is
select ename from emp;

lv_ename emp.ename%type;

begin
open data_cur;
dbms_output.put_line(data_cur%rowcount);
loop
fetch data_cur into lv_ename;
exit when data_cur%notfound;

dbms_output.put_line(data_cur%rowcount);

end loop;
dbms_output.put_line(data_cur%rowcount);
close data_cur;
end;
