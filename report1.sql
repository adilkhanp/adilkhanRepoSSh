declare
cursor data_cur is
select ename,sal from emp;

lv_emp_rec data_cur%type;

begin
open data_cur;
loop
fetch data_cur into lv_emp_rec;
exit when data_cur%notfound;

dbms_output.put_line(lv_emp_rec.ename||lv_emp_rec.sal);

end loop;
close data_cur;
end;
