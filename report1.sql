declare
cursor data_cur is
select ename from emp;

lv_ename emp.ename%type;

begin
open data_cur;
loop
fetch data_cur into lv_ename;
exit when data_cur%notfound;

dbms_output.put_line(lv_ename);

end loop;
close data_cur;
end;
