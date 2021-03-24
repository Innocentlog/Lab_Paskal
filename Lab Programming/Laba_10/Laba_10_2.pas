var 
a,b:integer;
res1,res2:real;

procedure Func(a,b:integer; var res1,res2:real);
begin
  res1:=power(a+b,3);
  res2:=power(a-b,3);
end;

begin
(a,b):=readinteger2('[a,b]');
Func(a,b,res1,res2);
writeln('Куб суммы:',res1);
writeln('Куб разности:',res2); 
end.