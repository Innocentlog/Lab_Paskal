var n,i:integer;
    x,e,t,s:real;
begin
write('x=');
readln(x);
write('n=');
readln(n);
e:=0.00001;
//вычисление с точностью
i:=0;
t:=1;
s:=t;
while abs(t)>e do
 begin
  i:=i+1;
  t:=t*x*x/(2*i-1)/(2*i);
  s:=s+t;
 end;
writeln('Сумма ряда с точностью 0.00001=',s:0:7);
//вычислениие N членов ряда

t:=1;
s:=t;
for i:=1 to n do
 begin
  t:=t*x*x/(2*i-1)/(2*i);
  s:=s+t;
 end;
writeln('Сумма первых ',n,' членов ряда=',s:10:7);
writeln('ch(x)=',(exp(x)+exp(-x))/2:10:7);
end.