// Брусов Иннокентий |Двумерные массивы|Вариант 5|
//№1 Найти сумму положительных элементов двуменого массива
program n_2;
const nmax=15;
var a:array[1..nmax,1..nmax] of integer;
m,n,i,j,imx,jmx:byte;
mx, sum:integer;
begin
//двумерный массив
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
   for i:=1 to n do
      for j:=1 to n do
         if a[i,j]>0 then
            sum:=sum+a[i,j];
            
   writeln('Сумма положительных элементов матрицы: ', sum);
   readln;
end.