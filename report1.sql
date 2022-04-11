declare
cursor data_cur is
select ename,sal from emp;

lv_ename emp.ename%type;
lv_sal   emp.sal%type;

begin
open data_cur;
loop
fetch data_cur into lv_ename;
exit when data_cur%notfound;

dbms_output.put_line(lv_ename);
dbms_output.put_line(lv_sal);

end loop;
close data_cur;
end;
