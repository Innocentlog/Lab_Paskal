program n_3;
const nmax=15;
var a:array[1..nmax,1..nmax] of integer;
m,n,i,j,imx,jmx:byte;
mx, sum:integer;
begin
randomize;
repeat
write('Количество строк до ',nmax,' m =');
read(m);

until m in [1..nmax];
repeat
write('Количество столбцов до ',nmax,' n =');
read(n);

until n in [1..nmax];
writeln('Исходная матрица:');
for i:=1 to m do
begin
  for j:=1 to n do
  begin
   a[i,j]:=random(20) -10;
   write('|',a[i,j]:3);
  end;
  writeln;
end;

sum:=0;
for j:=1 to n do 
 for i:=1 to n do 
 if (a[i,j]>0) then sum:=a[i,j]+sum;
 write('Сумма:', sum);
end.