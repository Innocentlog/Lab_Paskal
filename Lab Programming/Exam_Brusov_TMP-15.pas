//|ТМП-15|Брусов Иннокентий|Экзамен|
//Найти номер строки и столбца, в которой находиться максимальный элемент двумерного массива (считать, что в массиве всегода есть один максимальный элемент)
Program n_exam;
const nmax=15;
var a:array[1..nmax,1..nmax] of integer;
m,n,i,j,imx,jmx:byte;
mx:integer;
begin
randomize;
repeat
write('Количество строк до ',nmax,' m=');
read(m);

until m in [1..nmax];
repeat
write('Количество столбцов до ',nmax,' n=');
read(n);

until n in [1..nmax];
writeln('Исходная матрица:');
for i:=1 to m do
begin
  for j:=1 to n do
  begin
   a[i,j]:=random(20);
   write('|',a[i,j]:3);
  end;
  writeln;
end;

writeln;
mx:=a[1,1];
imx:=1;
jmx:=1;

for i:=1 to m do
 for j:=1 to n do
  if a[i,j]>mx then
   begin
   mx:=a[i,j];
   imx:=i;
   jmx:=j
   end;

writeln('Максимальный элемент a[',imx,',',jmx,']=',mx);
end.