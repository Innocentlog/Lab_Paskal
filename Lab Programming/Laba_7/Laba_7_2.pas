var s,n,x:integer;

begin
s:=1;
n:=1;
repeat
 write('Введите x[',n,']:');
 readln(x);
 if x <> 99 then 
    if (n mod 2=0) then
      s:=s*x;
 inc(n);
until x=99;

write('Произведение:',s);
end.